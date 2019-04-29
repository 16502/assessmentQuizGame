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

function buttons:drawButtons()
    local widget = require( "widget" )
    -- Function to handle button events
    local function handleButtonEvent( event )
        if ( "ended" == event.phase ) then
            print( "Button was pressed and released" )
        end
    end
    -- Create the widget
    local button1 = widget.newButton(
        {
            label = questions[1],
            onEvent = handleButtonEvent,
            emboss = false,
            -- Properties for a rounded rectangle button
            shape = "roundedRect",
            width = 200,
            height = 40,
            cornerRadius = 2,
            fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
            strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
            strokeWidth = 4
        }
    )
    -- Center the button
    button1.x = display.contentCenterX
    button1.y = display.contentCenterY
    -- Change the button's label text
    button1:setLabel( "Shape" )
end
