require("classes.30logglobal")
local widget = require("widget")
local Buttons = require("classes.buttons") -- assigns the variable "buttons" to the class buttons so it can be called apon
----------------------------------------------------------
-- Constants
----------------------------------------------------------
local fullWidth = display.contentWidth
local fullHeight = display.contentHeight
local centerX = display.contentCenterX
local centerY = display.contentCenterY
----------------------------------------------------------
-- Questions and answers
----------------------------------------------------------
questions = {
    "What Country has the largest population in the world?",
    "How long is the longest bridge in the world?",
    "What is the world's most popular sport?",
    "What's the highest grossing movie of all time?",
    "How many bones does an adult human have?",
    "What is one quarter of 1,000?",
    "Which ocean surrounds the Maldives?",
    "Who wrote the book 1984?",
    "What is the national flower of Wales?",
    "Which Russian town suffered an infamous nuclear disaster in 1986?"
}

answers = {
    {"China","India","United States"},
    {"164,800m","157,317m","113,700m"},
    {"Football","Cricket","Hockey"},
    {"Avatar","Avengers: Endgame","Titanic"},
    {"206","180","200"},
    {"250","200","125"},
    {"Indian Ocean","Pacific Ocean","Atlantic Ocean"},
    {"George Orwell","Margaret Atwood","Aldous Huxley"},
    {"Daffodil","Daisy","Poppy"},
    {"Chernobyl","Moscow","Saint Petersburg"}
}
correctAnswer = {"1","2","3","4","5","6","7"}
print(questions[1])
print(answers[1])
print(correctAnswer[1])
----------------------------------------------------------
-- Creating and drawing Buttons
----------------------------------------------------------
QuestionText = display.newText("Question", centerX, centerY + 2000, native.systemFont, 72)

answerButtonONE = Buttons:new(centerX, centerY + 2000, "BUTTON ONE", 800, 200, "BUTTON ONE")
answerButtonTWO = Buttons:new(centerX, centerY + 2000, "BUTTON TWO", 800, 200, "BUTTON TWO")
answerButtonTHREE = Buttons:new(centerX, centerY + 2000, "BUTTON THREE", 800, 200, "BUTTON THREE")




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

local function continueButtonRelease(event)
    if ( "ended" == event.phase ) then
        name = nameTextBox.text
        print(name)
        if nameTextBox.text == "" then
			local alert = native.showAlert("Error - No Text Entered", "There was no text entered in the textbox, Please enter your name")
        elseif string.len(nameTextBox.text) <= 2 then
            local alert = native.showAlert("Error - To few characters", "Please enter your name") -- for give me sir, This is the only way I could find to
        elseif string.find(nameTextBox.text, 1) ~= nil then
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 2) ~= nil then
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 3) ~= nil then
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 4) ~= nil then
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 5) ~= nil then
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 6) ~= nil then
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 7) ~= nil then
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 8) ~= nil then
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 9) ~= nil then
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 0) ~= nil then
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        else
            nameText:removeSelf()
            nameTextBox:removeSelf()
            continueButton:removeSelf()
            answerButtonONE:place(centerX, centerY + 125)
            answerButtonTWO:place(centerX, centerY + 425)
            answerButtonTHREE:place(centerX, centerY+ 725)
            ----------------------------------------------------------
            -- Game
            ----------------------------------------------------------
            score = 0
            QuestionText.y = centerY - 100
            QuestionText.text = "KIA ORA"
            answerButtonONE:text("Andre")
            local function handleButtonEvent(event)
                    if self.id == "BUTTON ONE" then
                        print("BUTTON_ONE")
                    elseif self.id == "BUTTON TWO" then
                        print("BUTTON_TWO")
                    elseif self.id == "BUTTON THREE" then
                        print("BUTTON_THREE")
                    end
            end











        end
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
