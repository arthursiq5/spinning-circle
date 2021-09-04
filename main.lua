posX = 250
posY = 250
angulo = 0
tamanho = 1
origem = 125

function love.load()
    imagem = love.graphics.newImage('img/circle.png')
    love.mouse.setVisible(false)
end

function love.update(dt)
    if love.keyboard.isDown('left') then
        posX = posX - 100 * dt
        angulo = angulo - dt * 1.5
    end
    if love.keyboard.isDown('right') then
        posX = posX + 100 * dt
        angulo = angulo + dt * 1.5
    end
end

function love.draw()
    rot = angulo
    love.graphics.draw(imagem, posX, posY, rot, tam, tam, origem, origem)
end
