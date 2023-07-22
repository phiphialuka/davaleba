
local rectX, rectY = 100, 100
local rectWidth, rectHeight = 50, 50




function love.update(dt)

    if love.keyboard.isDown("up") then
        rectY = rectY - 10
    elseif love.keyboard.isDown("down") then
        rectY = rectY + 10
    end

   
    if rectY < 0 then
        rectY = 0
    elseif rectY + rectHeight > love.graphics.getHeight() then
        rectY = love.graphics.getHeight() - rectHeight
    end
end

function love.draw()
    
    love.graphics.rectangle("fill", rectX, rectY, rectWidth, rectHeight)
end