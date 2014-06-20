SPAM - Simple Powerful Audio Manager
====================================

SPAM was created to be a simple, yet powerful audio manager. I created it as part of a project I was working on, but I thought it would be useful to other people. SPAM is to be designed to be easy to use, lightweight and compact, weighing in at less than 5KB!.

Documentation:
<br />
```
Spam:Load( name, pathToAudio, type )
```

Loads an audio file into SPAM.

name - A shorthand name used to access the song.<br />
pathToAudio - Path to the audio file.<br />
type - Type of audio clip. Can be either "static" or "stream". See http://www.love2d.org/wiki/SourceType
<br />
<br />
<br />
```
Spam:Play( name )
```

Plays an audio file. This file has to be loaded into SPAM, see Spam:Load()

name - Name of the audio file loaded into SPAM
<br />
<br />
<br />
```
Spam:Loop( name )
```

Loops an audio file. This file has to be loaded into SPAM, see Spam:Load()

name - Name of the audio file you've loaded into SPAM
<br />
<br />
<br />
```
Spam:Stop( name )
```

Stops an audio file. This file has to be loaded into SPAM, see Spam:Load()

name - Name of the audio file you've loaded into SPAM
<br />
<br />
<br />
```
Spam:StopAll()
```

Stops all playing audio. Only stops audio loaded into SPAM. Any audio playing outside of SPAM will not be stopped.
<br />
<br />
<br />
```
Spam:Get( name )
```

Gets an audio file. This file has to be loaded into SPAM, see Spam:Load(). Returns the audio source, not the audio name.

name - Name of the audio file you've loaded into SPAM
<br />
<br />
<br />
```
Spam:GetVolume( name )
```

Gets the volume of an audio track. This file has to be loaded into SPAM, see Spam:Load(). Returns the volume of the track.

name - Name of the audio file you want to get the volume of.
<br />
<br />
<br />
```
Spam:SetVolume( name, vol )
```

Sets the volume of an audio track. This file has to be loaded into SPAM, see Spam:Load(). Does not return anything.

name - Name of the audio track<br />
vol - New volume you want to set to the audio track
<br />
<br />
<br />
```
Spam:SetGlobalVolume( vol )
```

Sets the global volume for all SPAM audio sources. Overrides Spam:SetVolume( name, vol ). This file has to be loaded into SPAM, see Spam:Load()

vol - Volume to set all SPAM audio sources to.
<br />
<br />
<br />
```
Spam:Resume( name )
```

Resumes a SPAM audio track. This audio track has to be loaded into SPAM, see Spam:Load(). Will only resume if the track is paused, otherwise nothing happens to the given audio track.

name - Name of the audio track to resume
<br />
<br />
<br />
```
Spam:Pause( name )
```

Pauses a given audio track. This audio track has to be loaded into SPAM, see Spam:Load(). Will only pause if the track is playing, otherwise nothing happens to the given track.

name - Name of the audio track to pause
<br />
<br />
<br />
```
Spam:IsPlaying( name )
```

Checks whether a given audio track is playing. This audio track has to be loaded into SPAM, see Spam:Load(). Will return true of the track is playing, false otherwise.

name - Name of the audio track
<br />
<br />
<br />
```
Spam:IsPaused( name )
```

Checks whether a given audio track is paused. This audio track has to be loaded into SPAM, see Spam:Load(). Will return true if the track is paused, false otherwise.

name - Name of the audio track
<br />
<br />
<br />
```
Spam:GetType( name )
```

Gets the type of a given source. This source has to be loaded into SPAM, see Spam:Load(). Will return "static" or "stream".

name - Name of the audio track
<br />
<br />
<br />
```
Spam:Delete( name )
```

Deletes an audio file. This file has to be loaded into SPAM, see Spam:Load()
<br />
<br />
<br />
```
Spam:DeleteAll()
```

Deletes all audio files inside of SPAM.

<br />
<br />
<br />

Spam is just a thin wrapper over a small part of the love.audio module. Anything advanced that you need from love.audio you can still use by calling ``` Spam:Get( name):LoveDotAudioMethodHere( params ) ```, if you need some more advanced features. Hopefully, for basic audio playing and configuration, SPAM will meet your needs.

<br />
<br />

Thanks for using! Hope you enjoy it!
