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
    enabled = true,
    column_offset = 20
}

local spectatorsTest = {
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

local column = 0
local spectatorList = {}

function spectator_draw(names)
    for i, v in pairs(names) do
        table.insert(spectatorList, v)
    end
end

-- spectator_draw(spectators)

dx9.DrawFilledBox({boxOutline.x, boxOutline.y}, {boxOutline.width, boxOutline.height}, {255, 0, 255})
dx9.DrawFilledBox({box.x, box.y}, {box.width, box.height}, {28, 28, 30})

dx9.DrawString({boxOutline.x * 2, boxOutline.y - 1}, {255, 255, 255}, 'Possible Spectators')

for i, v in pairs(spectatorList) do
    column = column + config.column_offset
    dx9.DrawString({box.x * 1.5, box.y + column}, {255, 255, 255}, v)
end
column = 0
