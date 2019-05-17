local Buttons = class()
Buttons.__name = "Buttons"
local widget = require("widget")
-- Constants
local centerX = display.contentCenterX
local centerY = display.contentCenterY

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
    local function handleAnswerButtonEvent(event)
        if self.id == "BUTTON_ONE" then
            QuestionText.text = "Correct"
            display.setDefault("background", 0,0.619,0)
            score = score + 1
            local function timer(event )
                display.setDefault("background", 0,0,0.619)
                answerButtonONE:place(centerX, centerY + 2000)
                answerButtonTWO:place(centerX, centerY + 2000)
                answerButtonTHREE:place(centerX, centerY + 2000)
                QuestionText:removeSelf()
                score = score * 100
                if score == 100 then
                    congratText = display.newText("Congratulations " ..name .."!", centerX + 30, centerY - 100, 800, 100, native.systemFont, 72)
                    scoreText = display.newText("You achieved " ..score .."%", centerX + 80, centerY, 800, 100, native.systemFont, 72)
                elseif score == 0 then
                    congratText = display.newText("What happened?", centerX + 120, centerY - 100, 800, 100, native.systemFont, 72)
                    scoreText = display.newText("You achieved " ..score .."%", centerX + 80, centerY, 800, 100, native.systemFont, 72)
                end
            end
            timer.performWithDelay(1000, timer)
        else
            QuestionText.text = "Incorrect"
            display.setDefault("background", 1,0,0)
            score = 0
            local function listener( event )
                display.setDefault("background", 0,0,0.619)
                answerButtonONE:place(centerX, centerY + 2000)
                answerButtonTWO:place(centerX, centerY + 2000)
                answerButtonTHREE:place(centerX, centerY + 2000)
                QuestionText:removeSelf()
                score = score * 100
                if score == 100 then
                    congratText = display.newText("Congratulations " ..name .."!", centerX + 140, centerY - 100, 800, 100, native.systemFont, 72)
                    scoreText = display.newText("You achieved " ..score .."%", centerX + 80, centerY, 800, 100, native.systemFont, 72)
                elseif score == 0 then
                    congratText = display.newText("What happened " ..name .."?", centerX + 50, centerY - 100, 800, 100, native.systemFont, 72)
                    scoreText = display.newText("You achieved " ..score .."%", centerX + 140, centerY, 800, 100, native.systemFont, 72)
                end
            end
            timer.performWithDelay(1000, listener)
        end
    end
    self.button = widget.newButton(
        {
            label = self.text,
            labelColor = { default={0,0,0,1}, over={0,0,0,1} },
            onRelease = handleAnswerButtonEvent,
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
  self.button:setLabel(newText)
end
return Buttons
