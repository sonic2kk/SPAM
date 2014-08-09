SPAM - Simple Powerful Audio Manager
====

SPAM (Simple Powerful Audio Manager) is a small audio manager for the LÖVE (Love2d) game development framework. It is 4KB, and it relativly easy to use and very easy to just add to your game. To add it to your game, simply add spam.lua to your game code directory, and require it like so:

```lua
-- This way...
require("spam")

-- ... or this way
require "spam"
```

Here is an example of how to use SPAM in your game:

```lua
require('spam')

local mn = "manager1"

function love.load()
  spam_newmanager(mn)

  spam_newsource(mn, 'bgm', 'audioclip.extension', 'audiotype')

  spam_setloopsource(mn, 'bgm', true)

  spam_playsource(mn, 'bgm')
end

function love.update(dt)
  
end

function love.draw()
  
end
```
