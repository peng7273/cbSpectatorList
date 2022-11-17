local box = {
    x = 50,
    y = 300,
    width = 280,
    height = 280 * 2
}

local boxOutline = {
    x = 48,
    y = 282,
    width = 282,
    height = 563
}

local config = {
    enabled = true
}

local spectators = {
    'Xpiredd',
    'Nigger',
    'Pleb',
    'Mohammed',
    'saidnipanfgipdgdnfisd',
    'Xpiredd',
    'Nigger',
    'Pleb',
    'Mohammed'
}

local column_offset = 5
local column = 0
local spectatorList = {}

function add(str)
    for i, v in pairs(spectatorList) do
        if v == str then
            return
        else
            table.insert(spectatorList, str)
        end
    end
end

function remove(str)
    if spectatorList then
        for i, v in pairs(spectatorList) do
            if v == str then
                table.remove(spectatorList, str)
            end
        end
    end
end

dx9.DrawFilledBox({boxOutline.x, boxOutline.y}, {boxOutline.width, boxOutline.height}, {255, 0, 255})
dx9.DrawFilledBox({box.x, box.y}, {box.width, box.height}, {28, 28, 30})

dx9.DrawString({boxOutline.x * 2, boxOutline.y - 1}, {255, 255, 255}, 'Possible Spectators')

for i, v in pairs(spectators) do
    add(v)
end

for i, v in pairs(spectatorList) do
    column = column + column_offset
    dx9.DrawString({box.x * 2, box.y + column}, {255, 255, 255}, str)
end
column = 0
