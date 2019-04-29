local Buttons = class()
Buttons.__name = "Buttons"
local widget = require("widget")

function Buttons:__init(group, xPosition, yPosition, text, width, length, id)
    self.group = group
    self.xPosition = xPosition -- Assigns the xPosition of the button to the parameter xPosition
    self.yPosition = yPosition -- Assigns the yPosition of the button to the parameter yPosition
    self.text = text -- Assigns the text in the button to the parameter text
    self.width = width -- Assigns the width of the button to the parameter width
    self.length = length -- Assigns the length of the button to the parameter length
    self.id = id -- Assigns the id of the button to id

self:draw()
end

function Buttons:drawButtons(text, xPosition, yPosition)



local widget = require( "widget" )
-- Function to handle button events
local function handleButtonEvent( event )

    if ( "ended" == event.phase ) then
        print( "Button was pressed and released" )
    end
end

-- Create the widget
local buttons = widget.newButton(
    {
        label = text,
        onEvent = handleButtonEvent,
        emboss = false,
        -- Properties for a rounded rectangle button
        shape = "roundedRect",
        width = 650,
        height = 150,
        cornerRadius = 45,
        fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
        strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
        strokeWidth = 4,
        fontSize = "65"--,
    }
)
end

return Buttons
