local Buttons = class()
Buttons.__name = "Buttons"
local widget = require("widget")

function Buttons:__init(xPosition, yPosition, text, width, height, id)
    self.group = group
    self.xPosition = xPosition -- Assigns the xPosition of the button to the parameter xPosition
    self.yPosition = yPosition -- Assigns the yPosition of the button to the parameter yPosition
    self.text = text -- Assigns the text in the button to the parameter text
    self.width = width -- Assigns the width of the button to the parameter width
    self.height = height -- Assigns the length of the button to the parameter length
    self.id = id -- Assigns the id of the button to id
    self:drawButtons()
end

function Buttons:drawButtons()
    local function handleButtonEvent(event)
            print(self.id)
    end
    local buttons = widget.newButton(
        {
            label = self.text,
            onRelease = handleButtonEvent,
            emboss = false,
            -- Properties for a rounded rectangle button
            shape = "roundedRect",
            width = self.width,
            height = self.height,
            x = self.xPosition,
            y = self.yPosition,
            cornerRadius = 1,
            fillColor = { default={1,0,0,0.5}, over={1,0.1,0.7,1} },
            strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
            strokeWidth = 4,
            fontSize = "65"
        }
    )
end

return Buttons
