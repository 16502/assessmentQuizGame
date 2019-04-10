local buttons = class()
buttons.__name = "buttons"
local widget = require("widget")

function buttons:__init(group, xPosition, yPosition, text, width, length, id)
    self.group = group
    self.xPosition = xPosition
    self.yPosition = yPosition
    self.text = text
    self.width = width
    self.length = length
    self.id = id
end

function buttons:buttonRect()

end
