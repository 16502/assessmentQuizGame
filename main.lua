require("classes.30logglobal")
local Buttons = require("classes.buttons") -- assigns the variable "buttons" to the class buttons so it can be called apon
-------------------------
-- Constants
-------------------------
local fullWidth = display.contentWeight
local fullHeight = display.contentHeight
local centerX = display.contentCenterX
local centerY = display.contentCenterY


questions = {"One","Two","Three","Four","Five","Six","Seven"}
answers = {"A","B","C","D","E","F","G"}
correctAnswer = {"1","2","3","4","5","6","7"}

print(questions[1])
print(answers[1])
print(correctAnswer[1])

Buttons:drawButtons("2", display.contentCenterX, display.contentCenterY)
Buttons:drawButtons("1", display.contentCenterX, display.contentCenterY + 500)
Buttons:drawButtons("3", display.contentCenterX, display.contentCenterY - 500)
