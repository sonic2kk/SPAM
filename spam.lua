-- SPAM static object
Spam = {}

-- Local sounds table
local sounds = {}

function Spam:Load( name, pathToAudio, type )
	-- Loading a specfic sound
	local sound = love.audio.newSource(pathToAudio, type)

	-- Loading the sound into the sounds table
	sounds[name] = sound
end

function Spam:Play( name )
	-- Playing the sound and setting looping to false
	sounds[name]:setLooping(false)
	sounds[name]:play()
end

function Spam:Loop( name )
	-- Playing the audio and looping it
	sounds[name]:setLooping(true)
	sounds[name]:play()
end

function Spam:Stop( name )
	-- Stopping an audio track
	sounds[name]:stop()
end

function Spam:StopAll()
	-- Stopping all audio tracks
	for i, v in ipairs(sounds) do
		sounds[i]:stop()
	end
end

function Spam:Get( name )
	-- Getting a specific sound
	return sounds[name]
end

function Spam:GetVolume( name )
	-- Getting the volume of a specific audio track
	return sounds[name]:getVolume()
end

function Spam:SetVolume( name, vol )
	-- Setting the volume of a specifc audio track
	sounds[name]:setVolume(vol)
end

function Spam:SetGlobalAudio( vol )
	-- Setting the volume of all SPAM audio tracks
	for i, v in ipairs(sounds) do
		sounds[i]:setVolume(vol)
	end
end

function Spam:Resume( name )
	-- Resuming a spam audio track if it was paused
	if sounds[name]:isPaused() then
		sounds[name]:resume()
	end
end

function Spam:ResumeAll()
	-- Resuming audio tracks if they are paused
	for i, v in ipairs(sounds) do
		if sounds[v]:isPaused() then
			sounds[v]:resume()
		end
	end
end

function Spam:Pause( name )
	-- Pausing an audio track if it is playing
	if sounds[name]:isPlaying() then
		sounds[name]:pause()
	end
end

function Spam:PauseAll()
	-- Pausing all audio tracks if they are playing
	for i, v in ipairs(sounds) do
		if sounds[v]:isPlaying() then
			sounds[v]:pause()
		end
	end
end

function Spam:IsPlaying( name )
	-- Gets if a song is currently playing
	return sounds[name]:isPlaying()
end

function Spam:IsPaused( name )
	-- Checkes whether the source is paused
	return sounds[name]:isPaused()
end

function Spam:GetType( name )
	-- Ternary operation in Lua
	local t
	if sounds[name]:isStatic() then t = "static" else t = "stream" end

	-- Returning the type
	return t
end

function Spam:Delete( name )
	-- Deletes a sound
	sounds[name] = nil

	-- Collecting garbage
	collectgarbage()
end

function Spam:DeleteAll()
	-- Deletes all sounds from SPAM
	for i, v in ipairs(sounds) do
		sounds[v] = nil
	end

	collectgarbage()
end