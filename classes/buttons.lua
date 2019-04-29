local buttons = class()
buttons.__name = "buttons"
local widget = require("widget")

function buttons:__init(group, xPosition, yPosition, text, width, length, id)
    self.group = group
    self.xPosition = xPosition -- Assigns the xPosition of the button to the parameter xPosition
    self.yPosition = yPosition -- Assigns the yPosition of the button to the parameter yPosition
    self.text = text -- Assigns the text in the button to the parameter text
    self.width = width -- Assigns the width of the button to the parameter width
    self.length = length -- Assigns the length of the button to the parameter length
    self.id = id -- Assigns the id of the button to id
end

function buttons:draw()
    local function button(event)

    end

end
