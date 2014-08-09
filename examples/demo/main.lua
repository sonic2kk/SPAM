-- Music is "Ciper" by Kevin MacLeod (http://www.incompetech.com/)

require('spam')

local mn = "manager1"

function love.load()
  spam_newmanager(mn)

  spam_newsource(mn, 'bgm', 'ciper.mp3', 'stream')

  spam_setloopsource(mn, 'bgm', true)

  spam_playsource(mn, 'bgm')
end

function love.update(dt)
  
end

function love.draw()
  
end