import math
import shutil
from typing import Any
from math import log, ceil
import os
import re


# CREDIT TO @hanmangokiwi on Github

def create_search_function(path: str, function_path: str, selector_objective: str, commands: Any,
                           domain: tuple[int, int], continue_domain: tuple[bool, bool] = (False, False),
                           scale: int = 1, divisions: int = 4, _function_name: int = 0):
    """Write a search function for Minecraft functions in the path provided.

      - path: The absolute path of the folder to output to. WARNING: THE FOLDER, AND ALL ITEMS WITHIN WILL BE DELTED.
      - function_path: The path of the function that Minecraft will recognize.
      - selector_objective: The selector and objective pair to compare the value to. e.g. @s objective, FakePlayer
            index, etc.
      - commands: A function that will return the minecraft command given an index.
      - domain: A tuple representing the domain of the search function.
      - continue_domain: A tuple with two boolean values, continue left and right, for whether values outside of the
            domain should still be given a command.
      - scale: How much to scale the domain by. e.g. a domain containing (0,1,2) would be scaled to (0..2,3..5,6..8)
            I'm not sure why you would want this, but I'm keeping it in for people that might want it.
      - divisions: The number of divisions at each branch node. 2 if you want a binary tree, 3 if you want a
            ternary tree, etc.
            Note: The way Minecraft does commands makes the number of commands run with a binary and quaternary tree
            exactly the same, although a quaternary tree has less function files and is better. Realistically, the only
            number you would include here are 3 and 4: 3 if you want maximum speed, 4 if you're okay with a small
            performance hit for the sake of nice numbers. I can't really think of reasons why you might want to use
            a larger number of divisions since it defeats the purpose of doing this. Maybe your range is enormous and
            you want to save on the number of functions (large number of functions eats RAM like crazy). I'm sure if
            you're using this tool you know what's best for you.
      - _function_name: Name of this function as an integer. Do not specify.
    """
    if _function_name == 0:
        if path != '':
            try:
                shutil.rmtree(path)
            except FileNotFoundError:
                pass
            os.mkdir(path)
        else:
            raise 'path seems to be empty! Please specify.'

        if divisions <= 1:
            raise 'Number of divisions must be at least 2!'
        elif divisions == 2:
            print('You have set the number of divisions to 2, which is fine but 4 has the exact same running time with'
                  'less functions. Why not try that instead?')

    left, right = domain
    if right - left >= divisions:
        section_amount = (right - left) / divisions

        cutoff_points = [math.ceil(left + i * section_amount)
                         for i in range(divisions)]
        cutoff_points.append(right + 1)
    else:
        cutoff_points = [left + i for i in range(right - left + 2)]

    if _function_name != 0:
        f_name = str(_function_name)
    else:
        f_name = 'main'

    search_path = os.path.join(path, f_name + '.mcfunction')

    for i in range(divisions):
        f = open(search_path, 'a')
        try:
            left = cutoff_points[i]
            right = cutoff_points[i + 1] - 1
        except IndexError:
            continue

        if left == right:
            if scale == 1:
                command = 'execute if score ' + selector_objective + \
                    ' matches ' + str(left * scale) + ' run '
            else:
                command = 'execute if score ' + selector_objective + ' matches ' + str(left * scale) + '..' + str(
                    (left + 1) * scale - 1) + ' run '

            new_command = commands(left)
            if type(new_command) is str:
                command += new_command
                command = command.replace(' run execute', '')
                f.write(command)
                f.write('\n')
                f.close()
            else:
                command += 'function ' + function_path + f_name + '_run' + '\n'
                command = command.replace(' run execute', '')
                f.write(command)
                f.write('\n')
                f.close()

                search_path_2 = os.path.join(
                    path, f_name + '_run' + '.mcfunction')
                f = open(search_path_2, 'a')
                for command in new_command:
                    command = command.replace(' run execute', '')
                    f.write(command + '\n')
        else:
            if i == 0:
                pass_domain = (continue_domain[0], False)
            elif i == divisions - 1:
                pass_domain = (False, continue_domain[1])
            else:
                pass_domain = (False, False)

            next_name = _function_name * divisions + i + 1

            if function_path[-1] != '/':
                function_path = function_path + '/'

            f.write('execute if score ' + selector_objective + ' matches ' + str(left * scale) + '..' + str(
                right * scale) + ' run function ' + function_path + str(next_name) + '\n')

            f.close()
            create_search_function(path, function_path, selector_objective, commands, (left, right), pass_domain, scale,
                                   divisions, next_name)


if __name__ == '__main__':
    directory = "/home/kitten/プロジェクト/Roms/Gameboy/"
    rom_name = "pkred"
    rom_extension = ".gb"

    rom = open(directory + rom_name + rom_extension, 'rb')

    rom.seek(0x0134)

    rom_name_lower = re.sub(b'[^a-zA-Z0-9_]+', b'', rom.read(10)).lower()

    if rom_name_lower == "":
        rom_name_lower = re.sub(b'[^a-zA-Z0-9_]+', b'', rom_name).lower()

    rom_name_lower = rom_name_lower.decode('utf-8')

    out_dir = '/home/kitten/.minecraft/saves/GB Emulator 1_18_2/datapacks/CraftBoyDatapack/data/craftboy/functions/read/rom_instruction'

    if not os.path.exists(out_dir):
        os.mkdir(out_dir)

    def read_rom(index):
        rom.seek(index)
        instr = int.from_bytes(rom.read(1), byteorder='little')
        if instr == 0xCB:
            instr = int.from_bytes(rom.read(1), byteorder='little')
            return "function craftboy:instructions/cb_" + str(instr)
        return "function craftboy:instructions/" + str(instr)

    create_search_function(out_dir,
                           'craftboy:read/rom_instruction', 'instr_addr craftboy', read_rom, (0x0000, 0x7FFF), (False, False), 1, 3)

    rom.close()

    instructions_dir = '/home/kitten/.minecraft/saves/GB Emulator 1_18_2/datapacks/CraftBoyDatapack/data/craftboy/functions/instructions'
    for i in range(0x00, 0xFF):
        with open(instructions_dir + '/cb_' + str(i) + '.mcfunction', 'r+') as f:
            content = f.read()
            f.seek(0, 0)
            f.write('scoreboard players add PC registers 1\n\n' + content)
