local Buttons = class()
Buttons.__name = "Buttons"
local widget = require("widget")

function Buttons:__init(xPosition, yPosition, text, width, height, id, correct)
    self.group = group
    self.xPosition = xPosition -- Assigns the xPosition of the button to the parameter xPosition
    self.yPosition = yPosition -- Assigns the yPosition of the button to the parameter yPosition
    self.text = text -- Assigns the text in the button to the parameter text
    self.width = width -- Assigns the width of the button to the parameter width
    self.height = height -- Assigns the length of the button to the parameter length
    self.correct = correct
    self.id = id -- Assigns the id of the button to id

    self:drawButtons()
end



function Buttons:drawButtons()
    local function handleButtonEvent(event)
        if self.id == "BUTTON_ONE" then
            print("BUTTON_ONE")
            display.setDefault("background", 0, 1, 0.1)
            answerButtonONE:changeText("question 2")
            answerButtonTWO:changeText("question 2")
            answerButtonTHREE:changeText("question 2")

        elseif self.id == "BUTTON_TWO" then
            print("BUTTON_TWO")
        elseif self.id == "BUTTON_THREE" then
            print("BUTTON_THREE")
        end
    end
    self.button = widget.newButton(
        {
            label = self.text,
            labelColor = { default={0,0,0,1}, over={0,0,0,1} },
            onRelease = handleButtonEvent,
            emboss = false,
            shape = "roundedRect",
            width = self.width,
            height = self.height,
            x = self.xPosition,
            y = self.yPosition,
            cornerRadius = 1,
            fillColor = { default={0.4,235,1,1}, over={0.4,0.9,1,1} },
            strokeColor = { default={0.4,0.9,1,1}, over={0.4,0.9,1,1} },
            strokeWidth = 25,
            fontSize = "65"
        }
    )
end
function Buttons:place(x, y)
    self.button.x = x
    self.button.y = y
end
function Buttons:changeText(newText)
  print(newText)
  self.button:setLabel(newText)
end
function Buttons:changeColor()
    self.button:setFillColor(1,1,1)
end
return Buttons
