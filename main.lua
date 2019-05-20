require("classes.30logglobal")
local Buttons = require("classes.buttons") -- assigns the variable "buttons" to the class buttons so it can be called apon
----------------------------------------------------------
-- Constants
----------------------------------------------------------
local fullWidth = display.contentWidth
local fullHeight = display.contentHeight
local centerX = display.contentCenterX
local centerY = display.contentCenterY
local widget = require("widget")
----------------------------------------------------------
-- Questions and answers
----------------------------------------------------------
questions = { -- Creates an array of questions and stores questions to be asked
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
answers = {-- Creates an array of answers and stores answers to the questions in seperate tables 3 answers for every question to be asked
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
correctAnswers = {"China","164,800m","Football","Avatar","206","250","Indian Ocean","George Orwell","Daffodil","Chernobyl"} -- Creates an array for the correct answers to questions
----------------------------------------------------------
-- Creating and drawing Buttons
----------------------------------------------------------
local questionTextOptions =
{
    text = "Question",
    x = centerX,
    y = centerY + 2000,
    width = 850,
    font = native.systemFont,
    fontSize = 72,
    align = "center"  -- Alignment parameter
}
QuestionText = display.newText(questionTextOptions)
answerButtonONE = Buttons:new(centerX, centerY + 2000, answers[1][1], 800, 200, "BUTTON_ONE")
answerButtonTWO = Buttons:new(centerX, centerY + 2000, answers[1][2], 800, 200, "BUTTON_TWO")
answerButtonTHREE = Buttons:new(centerX, centerY + 2000, answers[1][3], 800, 200, "BUTTON_THREE")
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
name = "name" -- Creates the variable name so that the name of the user can be stored. Isn't local because it have to be used in buttons.lua class
nameTextBox = native.newTextField( centerX, centerY, 800, 150 )
local continueButton
local function continueButtonRelease(event) -- When the continue button is pressed then do this...
    if ( "ended" == event.phase ) then
        name = nameTextBox.text -- Sets the name the user entered into the varible name
        print(name) -- prints name to the console
        if nameTextBox.text == "" then -- Checks if text box is empty
			local alert = native.showAlert("Error - No Text Entered", "There was no text entered in the textbox, Please enter your name")
        elseif string.find(nameTextBox.text, 1) ~= nil then -- checks if text box contains number 1
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name") -- forgive me sir, This is the only way I could find to
        elseif string.find(nameTextBox.text, 2) ~= nil then -- checks if text box contains number 2
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 3) ~= nil then -- checks if text box contains number 3
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 4) ~= nil then -- checks if text box contains number 4
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 5) ~= nil then -- checks if text box contains number 5
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 6) ~= nil then -- checks if text box contains number 6
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 7) ~= nil then -- checks if text box contains number 7
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 8) ~= nil then -- checks if text box contains number 8
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 9) ~= nil then -- checks if text box contains number 9
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.find(nameTextBox.text, 0) ~= nil then -- checks if text box contains number 0
            local alert = native.showAlert("Error - Numbers Entered", "Please enter your name")
        elseif string.len(nameTextBox.text) <= 2 then -- Checks if the number of characters sumbitted is less than two
            local alert = native.showAlert("Error - To few characters", "Please enter your name")
        else
            nameText:removeSelf() -- Moves text, textbox and the button off of the screen
            nameTextBox:removeSelf()
            continueButton:removeSelf()
            answerButtonONE:place(centerX, centerY + 125) -- Places the answer buttons to a position viewable on the screen
            answerButtonTWO:place(centerX, centerY + 425)
            answerButtonTHREE:place(centerX, centerY + 725)
            score = 0 -- Sets the players score to 0
            QuestionText.y = centerY - 500 -- positions QuestionText
            QuestionText.text = questions[1] -- Sets QuestionText to display the first question
        end
    end
end
-- Create the widget
continueButton = widget.newButton( -- Creates and sets parameters for but continue button
    {
        x = centerX - 265,
        y = centerY + 175,
        id = "continueButton",
        label = "continue",
        fontSize = "72",
        onRelease = continueButtonRelease
    }
)
