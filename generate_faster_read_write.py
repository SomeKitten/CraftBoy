import math
import shutil
from typing import Any
from math import log, ceil
import os


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
    def read(i: int):
        board = "undefined"
        if i in range(0x0000, 0x7FFF + 1):
            board = "rom"
        if i in range(0x8000, 0x9FFF + 1):
            board = "vram"
        if i in range(0xA000, 0xBFFF + 1):
            board = "ram"
        if i in range(0xC000, 0xDFFF + 1):
            board = "wram"
        if i in range(0xFE00, 0xFE9F + 1):
            board = "oam"
        if i in range(0xFF00, 0xFF7F + 1):
            board = "io"
        if i in range(0xFF80, 0xFFFE + 1):
            board = "hram"
        if i in range(0xFFFF, 0xFFFF + 1):
            board = "interrupt"

        if i == 0xFF4D:
            return "scoreboard players set transfter craftboy 255"
        else:
            return 'scoreboard players operation transfer craftboy = ' + str(i) + ' ' + board

    def write(i: int):
        board = "undefined"
        if i in range(0x0000, 0x00FF + 1):
            board = "bios"
        if i in range(0x0100, 0x7FFF + 1):
            board = "rom"
        if i in range(0x8000, 0x9FFF + 1):
            board = "vram"
        if i in range(0xA000, 0xBFFF + 1):
            board = "ram"
        if i in range(0xC000, 0xDFFF + 1):
            board = "wram"
        if i in range(0xFE00, 0xFE9F + 1):
            board = "oam"
        if i in range(0xFF00, 0xFF7F + 1):
            board = "io"
        if i in range(0xFF80, 0xFFFE + 1):
            board = "hram"
        if i in range(0xFFFF, 0xFFFF + 1):
            board = "interrupt"

        if i == 0xFF00:
            return "function craftboy:write/joypad"
        elif i == 0xFF04:
            return "function craftboy:write/div"
        elif i == 0xFF44:
            return "scoreboard players set 65348 io 0"
        elif i == 0xFF46:
            return "function craftboy:dma/dma_0_0"
        elif i == 0xFF50:
            return "function craftboy:craftboy/unmap_boot"
        else:
            return 'scoreboard players operation ' + str(i) + ' ' + board + ' = transfer craftboy'

    create_search_function('./CraftBoyDatapack/data/craftboy/functions/read/all_a',
                           'craftboy:read/all_a', 'index craftboy', read, (0x0000, 0x9FFF), (False, False), 1, 3)
    create_search_function('./CraftBoyDatapack/data/craftboy/functions/read/ram',
                           'craftboy:read/ram', 'index craftboy', read, (0xA000, 0xBFFF), (False, False), 1, 3)
    create_search_function('./CraftBoyDatapack/data/craftboy/functions/read/all_b',
                           'craftboy:read/all_b', 'index craftboy', read, (0xC000, 0xFFFF), (False, False), 1, 3)

    create_search_function('./CraftBoyDatapack/data/craftboy/functions/write/vram',
                           'craftboy:write/vram', 'index craftboy', write, (0x8000, 0x9FFF), (False, False), 1, 3)
    create_search_function('./CraftBoyDatapack/data/craftboy/functions/write/ram',
                           'craftboy:write/ram', 'index craftboy', write, (0xA000, 0xBFFF), (False, False), 1, 3)
    create_search_function('./CraftBoyDatapack/data/craftboy/functions/write/all_b',
                           'craftboy:write/all_b', 'index craftboy', write, (0xC000, 0xFFFF), (False, False), 1, 3)

    create_search_function('./CraftBoyDatapack/data/craftboy/functions/read/oam',
                           'craftboy:read/oam', 'index craftboy', read, (0xFE00, 0xFE9F), (False, False), 1, 3)
    create_search_function('./CraftBoyDatapack/data/craftboy/functions/write/oam',
                           'craftboy:write/oam', 'index craftboy', write, (0xFE00, 0xFE9F), (False, False), 1, 3)
    create_search_function('./CraftBoyDatapack/data/craftboy/functions/read/tile_vram',
                           'craftboy:read/tile_vram', 'index craftboy', read, (0x8000, 0x97FF), (False, False), 1, 3)
    create_search_function('./CraftBoyDatapack/data/craftboy/functions/write/tile_vram',
                           'craftboy:write/tile_vram', 'index craftboy', write, (0x8000, 0x97FF), (False, False), 1, 3)
    create_search_function('./CraftBoyDatapack/data/craftboy/functions/read/tile_map_vram',
                           'craftboy:read/tile_map_vram', 'index craftboy', read, (0x9800, 0x9FFF), (False, False), 1, 3)
    create_search_function('./CraftBoyDatapack/data/craftboy/functions/write/tile_map_vram',
                           'craftboy:write/tile_map_vram', 'index craftboy', write, (0x9800, 0x9FFF), (False, False), 1, 3)


with open('./CraftBoyDatapack/data/craftboy/functions/write/all/main.mcfunction', 'w') as f:
    f.write(
        'execute if score index craftboy matches 0..32767 run function craftboy:mbc/write\n')
    f.write(
        'execute if score index craftboy matches 32768..40959 run function craftboy:write/vram/main\n')
    f.write(
        'execute if score ram_gate craftboy matches 1 unless score 327 rom matches 252 if score index craftboy matches 40960..49151 run function craftboy:write/ram/main\n')
    f.write(
        'execute if score 327 rom matches 252 if score index craftboy matches 40960..49151 run say NOT IMPLEMENTED POCKET CAM SRAM\n')
    f.write(
        'execute if score index craftboy matches 49152..65535 run function craftboy:write/all_b/main\n')

with open('./CraftBoyDatapack/data/craftboy/functions/read/all/main.mcfunction', 'w') as f:
    f.write(
        'execute if score index craftboy matches 0..40959 run function craftboy:read/all_a/main\n')
    f.write(
        'execute if score ram_gate craftboy matches 1 if score index craftboy matches 40960..49151 run function craftboy:read/ram/main\n')
    f.write(
        'execute if score ram_gate craftboy matches 0 if score index craftboy matches 40960..49151 run scoreboard players set transfer craftboy 255\n')
    f.write(
        'execute if score index craftboy matches 49152..65535 run function craftboy:read/all_b/main\n')


with open('./CraftBoyDatapack/data/craftboy/functions/write/div.mcfunction', 'w') as f:
    f.write("""
scoreboard players set DIV timer 0
scoreboard players set 65284 io 0
""")

with open('./CraftBoyDatapack/data/craftboy/functions/write/joypad.mcfunction', 'w') as f:
    f.write("""
scoreboard players operation in binary = transfer craftboy
function craftboy:util/binary_split5

execute if score 5_5 binary matches 0 run scoreboard players operation 65280 io = buttons craftboy
execute if score 4_5 binary matches 0 run scoreboard players operation 65280 io = dpad craftboy
""")
