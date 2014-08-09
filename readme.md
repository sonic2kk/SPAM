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

# License

License can be found at "license.txt"

# Documentation

```lua
spam_newmanager(mname)
```
Creates a new SPAM audio manager

mname - Name of the manager
<br/>
<br/>
<br/>
```lua
spam_newsource(mname, sname, path, type)
```
Creates a new SPAM audio source

mname - Name of the manager

sname - Name of the source

path - Path to the source

type - Type of the source
<br/>
<br/>
<br/>
```lua
spam_removesource(mname, sname)
```
Removes a SPAM audio source

mname - Name of the manager

sname - Name of the source
<br/>
<br/>
<br/>
```lua
spam_setloopsource(mname, sname, loop)
```
Whether or not to loop a SPAM audio source

mname - Name of the manager

sname - Name of the source

loop - Whether or not to loop the audio source
<br/>
<br/>
<br/>
```lua
spam_setvolume(mname, sname, vol)
```
Sets the volume of a SPAM audio source

mname - Name of the manager

sname - Name of the source

vol - Volume to set of the audio source
<br/>
<br/>
<br/>
```lua
spam_getvolume(mname, sname)
```
Gets the volume of a SPAM audio source

mname - Name of the manager

sname - Name of the source
<br/>
<br/>
<br/>
```lua
spam_stopaudiosource(mname, sname)
```
Stops a SPAM audio source

mname - Name of the manager

sname - Name of the source
<br/>
<br/>
<br/>
```lua
spam_playsource(mname, sname)
```
Plays a SPAM audio source

mname - Name of the manager

sname - Name of the source
<br/>
<br/>
<br/>
```lua
spam_pausesource(mname, sname)
```
Pauses a SPAM audio source

mname - Name of the manager

sname - Name of the source
<br/>
<br/>
<br/>
```lua
spam_getsource(mname, sname)
```
Gets a SPAM audio source

mname - Name of the manager

sname - Name of the source
<br/>
<br/>
<br/>
```lua
spam_resumesource(mname, sname)
```
Resumes a SPAM audio source

mname - Name of the manager

sname - Name of the source
<br/>
<br/>
<br/>
```lua
spam_issourceplaying(mname, sname)
```
Checks if a given source is currently playing

mname - Name of the manager

sname - Name of the source
<br/>
<br/>
<br/>
```lua
spam_issourcelooping(mname, sname)
```
Checks if a given source is set to loop

mname - Name of the manager

sname - Name of the source
<br/>
<br/>
<br/>
```lua
spam_isstatic(mname, sname)
```
Checks if a source is static

mname - Name of the manager

sname - Name of the source
<br/>
<br/>
<br/>
```lua
spam_getposition(mname, sname, unit)
```
Checks the position of a given SPAM source

mname - Name of the manager

sname - Name of the source

unit - Unit to return the position in
<br/>
<br/>
<br/>
```lua
spam_ispaused(mname, sname)
```
Checks if a given SPAM audio source is paused

mname - Name of the manager

sname - Name of the source
