Spam = {}

local sounds = {}

function Spam:Load( name, pathToAudio, type )
	local sound = love.audio.newSource(pathToAudio, type)

	sounds[name] = sound
end

function Spam:Play( name )
	sounds[name]:setLooping(false)
	sounds[name]:play()
end

function Spam:Loop( name )
	sounds[name]:setLooping(true)
	sounds[name]:play()
end

function Spam:Stop( name )
	sounds[name]:stop()
end

function Spam:StopAll()
	for i, v in ipairs(sounds) do
		sounds[i]:stop()
	end
end

function Spam:Get( name )
	return sounds[name]
end

function Spam:Delte( name )
	sounds[name] = nil
end

function Spam:DeleteAll()
	for i, v in ipairs(sounds) do
		table.remove(sounds, v)
	end
end