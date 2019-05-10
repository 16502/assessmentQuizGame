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
            if self.id == "BUTTON ONE" then
                print("BUTTON_ONE")
            elseif self.id == "BUTTON TWO" then
                print("BUTTON_TWO")
            elseif self.id == "BUTTON THREE" then
                print("BUTTON_THREE")
            end
    end
    self.button = widget.newButton(
        {
            label = self.text,
            onRelease = handleButtonEvent,
            emboss = false,
            shape = "roundedRect",
            width = self.width,
            height = self.height,
            x = self.xPosition,
            y = self.yPosition,
            cornerRadius = 1,
            fillColor = { default={1,0,0,1}, over={1,0.1,0.7,1} },
            strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
            strokeWidth = 25,
            fontSize = "65"
        }
    )
end

function Buttons:place(x, y)
    self.button.x = x
    self.button.y = y
end

return Buttons
