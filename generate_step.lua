local directory = "./CraftBoyDatapack/data/step/functions/"

command_step = {
    "execute if score op craftboy matches ",
    " run function craftboy:instructions/", "\n"
}

command_step_cb = {
    "execute if score op_cb craftboy matches ",
    " run function craftboy:instructions/", "\n"
}

local recursions = 0

function recursive(depth, prefix, min, max)
    local len = math.floor((max - min) / 2)
    if len * 2 >= 4 then
        if prefix == "cb_" then
            execute_if = "execute if score op_cb craftboy matches "
        else
            execute_if = "execute if score op craftboy matches "
        end

        local filename = prefix .. depth .. "_" .. recursions

        local file = io.open(directory .. filename .. ".mcfunction", "w")

        local child_filename = prefix .. (depth + 1) .. "_" .. recursions
        file:write(execute_if .. min .. ".." .. (min + len) ..
                       " run function step:" .. child_filename .. "\n")

        file:close()
        recursive(depth + 1, prefix, min, min + len)

        file = io.open(directory .. filename .. ".mcfunction", "a")

        child_filename = prefix .. (depth + 1) .. "_" .. recursions
        file:write(execute_if .. (min + len + 1) .. ".." .. max ..
                       " run function step:" .. child_filename .. "\n")

        file:close()
        recursive(depth + 1, prefix, min + len + 1, max)
    else
        print(depth .. ", " .. recursions .. ": " .. min .. ", " .. max)

        local filename = prefix .. depth .. "_" .. recursions

        local file = io.open(directory .. filename .. ".mcfunction", "w")

        if prefix == "cb_" then
            command = command_step_cb
        else
            command = command_step
        end

        for i = min, max do
            file:write(command[1] .. i .. command[2] .. prefix .. i ..
                           command[3])
        end

        file:close()

        recursions = recursions + 1
    end
end

recursive(0, "", 0x0000, 0x00FF)
recursions = 0
recursive(0, "cb_", 0x0000, 0x00FF)
