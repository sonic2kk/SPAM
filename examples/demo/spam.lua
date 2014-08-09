spam = {}

function spam_newmanager(name)
	i = {
		name = name,
		audio = {},
	}

	table.insert(spam, i)
end

function spam_newsource(mname, sname, path, type)
	for i,v in ipairs(spam) do
		if v.name == mname then
			v.audio[sname] = love.audio.newSource(path, type)
		end
	end
end

function spam_removesource(mnane, sname)
	for i,v in ipairs(spam) do
		if v.name == mname then
			table.remove(v.audio, sname)
		end
	end
end

function spam_setloopsource(mname, sname, loop)
	for i,v in ipairs(spam) do
		if v.name == mname then
			v.audio[sname]:setLooping(loop)
		end
	end
end

function spam_setvolume(mname, sname, vol)
	for i,v in ipairs(spam) do
		if v.name == mname then
			v.audio[sname]:setVolume(vol)
		end
	end
end

function spam_getvolume(mname, sname)
	for i,v in ipairs(spam) do
		if v.name == mname then
			return v.audio[sname]:getVolume()
		end
	end
end

function spam_stopsource(mname, sname)
	for i,v in ipairs(spam) do
		if v.name == mname then
			v.audio[sname]:stop()
		end
	end
end

function spam_playsource(mname, sname)
	for i,v in ipairs(spam) do
		if v.name == mname then
			v.audio[sname]:play()
		end
	end
end

function spam_pausesource(mname, sname)
	for i,v in ipairs(spam) do
		if v.name == mname then
			v.audio[sname]:pause()
		end
	end
end

function spam_getsource(mname, sname)
	for i,v in ipairs(spam) do
		if v.name == mname then
			return v.audio[sname]
		end
	end
end

function spam_resumesource(mname, sname)
	for i,v in ipairs(spam) do
		if v.name == mname then
			v.audio[sname]:resume()
		end
	end
end

function spam_issourceplaying(mname, sname)
	for i,v in ipairs(spam) do
		if v.name == mname then
			v.audio[sname]:isPlaying()
		end
	end
end

function spam_issourcelooping(mname, sname)
	for i,v in ipairs(spam) do
		if v.name == mname then
			v.audio[sname]:isLooping()
		end
	end
end

function spam_isstatic(mname, sname)
	for i,v in ipairs(spam) do
		if v.name == mname then
			return v.audio[sname]:isStatic()
		end
	end
end

function spam_getposition(mname, sname, unit)
	for i,v in ipairs(spam) do
		if v.name == mname then
			return v.audio[sname]:tell(unit)
		end
	end
end

function spam_ispaused(mname, sname)
	for i,v in ipairs(spam) do
		if v.name == mname then
			return v.audio[sname]:isPaused()
		end
	end
end
