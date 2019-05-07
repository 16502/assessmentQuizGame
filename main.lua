require("classes.30logglobal")
local widget = require("widget")
local Buttons = require("classes.buttons") -- assigns the variable "buttons" to the class buttons so it can be called apon
----------------------------------------------------------
-- Constants
----------------------------------------------------------
local fullWidth = display.contentWeight
local fullHeight = display.contentHeight
local centerX = display.contentCenterX
local centerY = display.contentCenterY
----------------------------------------------------------
-- Questions and answers
----------------------------------------------------------
questions = {"One","Two","Three","Four","Five","Six","Seven"}
answers = {"A","B","C","D","E","F","G"}
correctAnswer = {"1","2","3","4","5","6","7"}
print(questions[1])
print(answers[1])
print(correctAnswer[1])
----------------------------------------------------------
-- Buttons and Qestion Text
----------------------------------------------------------
QuestionText = display.newText("Question", centerX, centerY - 500, native.systemFont, 72)


local buttonsGroup = display.newGroup()
answerButtonThree = Buttons:new(centerX, centerY + 550, "BUTTON THREE", 800, 200, "BUTTON THREE")
answerButtonTWO = Buttons:new(centerX, centerY + 250, "BUTTON TWO", 800, 200, "BUTTON TWO")
answerButtonONE = Buttons:new(centerX, centerY - 50, "BUTTON ONE", 800, 200, "BUTTON ONE")
answerButtonONE.alpha = 0
----------------------------------------------------------
-- Name Entry
----------------------------------------------------------
local nameTextOptions =
{
    text = "Please enter your name.",
    x = centerX,
    y = centerY - 500,
    width = 850, -- Number of pixels until text wraps
    font = native.systemFont,
    fontSize = 74,
    align = "center"  -- Text alignment parameter
}
local nameText = display.newText(nameTextOptions)
local name = "name"
nameTextBox = native.newTextField( centerX, centerY, 800, 150 )
local continueButton
-- Function to execute when continueButton is released
local function continueButtonRelease(event)
    if ( "ended" == event.phase ) then
        name = nameTextBox.text
        print(name)
        if nameTextBox.text == "" then
			local alert = native.showAlert( "Error - No Text Entered", "There was no text entered in the textbox")
		end
        nameText:removeSelf()
        nameTextBox:removeSelf()
        continueButton:removeSelf()

    end
end
-- Create the widget
continueButton = widget.newButton(
    {
        x = centerX - 265,
        y = centerY + 175,
        id = "continueButton",
        label = "continue",
        fontSize = "72",
        onRelease = continueButtonRelease
    }
)
