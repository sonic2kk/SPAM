SPAM - Simple Powerful Audio Manager
====================================

SPAM was created to be a simple, yet powerful audio manager. I created it as part of a project I was working on, but I thought it would be useful to other people. SPAM is to be designed to be easy to use, lightweight and compact.

Documentation:

```
Spam:Load( name, pathToAudio, type )
```

Loads an audio file into SPAM.

name - A shorthand name used to access the song.<br />
pathToAudio - Path to the audio file.<br />
type - Type of audio clip. Can be either "static" or "stream". See http://www.love2d.org/wiki/SourceType



```
Spam:Play( name )
```

Plays an audio file. This file has to be loaded into SPAM, see Spam:Load()

name - Name of the audio file loaded into SPAM



```
Spam:Loop( name )
```

Loops an audio file. This file has to be loaded into SPAM, see Spam:Load()

name - Name of the audio file you've loaded into SPAM



```
Spam:Stop( name )
```

Stops an audio file. This file has to be loaded into SPAM, see Spam:Load()

name - Name of the audio file you've loaded into SPAM



```
Spam:StopAll()
```

Stops all playing audio. Only stops audio loaded into SPAM. Any audio playing outside of SPAM will not be stopped.



```
Spam:Get( name )
```

Gets an audio file. This file has to be loaded into SPAM, see Spam:Load(). Returns the audio source, not the audio name.

name - Name of the audio file you've loaded into SPAM



```
Spam:GetVolume( name )
```

Gets the volume of an audio track. This file has to be loaded into SPAM, see Spam:Load(). Returns the volume of the track.

name - Name of the audio file you want to get the volume of.


```
Spam:SetVolume( name, vol )
```

Sets the volume of an audio track. This file has to be loaded into SPAM, see Spam:Load(). Does not return anything.

name - Name of the audio track
vol - New volume you want to set to the audio track



```
Spam:SetGlobalVolume( vol )
```

Sets the global volume for all SPAM audio sources. Overrides Spam:SetVolume( name, vol ). This file has to be loaded into SPAM, see Spam:Load()

vol - Volume to set all SPAM audio sources to.



```
Spam:Resume( name )
```

Resumes a SPAM audio track. This audio track has to be loaded into SPAM, see Spam:Load(). Will only resume if the track is paused, otherwise nothing happens to the given audio track.

name - Name of the audio track to resume



```
Spam:Pause( name )
```

Pauses a given audio track. This audio track has to be loaded into SPAM, see Spam:Load(). Will only pause if the track is playing, otherwise nothing happens to the given track.

name - Name of the audio track to pause



```
Spam:IsPlaying( name )
```

Checks whether a given audio track is playing. This audio track has to be loaded into SPAM, see Spam:Load(). Will return true of the track is playing, false otherwise.

name - Name of the audio track



```
Spam:IsPaused( name )
```

Checks whether a given audio track is paused. This audio track has to be loaded into SPAM, see Spam:Load(). Will return true if the track is paused, false otherwise.

name - Name of the audio track



```
Spam:GetType( name )
```

Gets the type of a given source. This source has to be loaded into SPAM, see Spam:Load(). Will return "static" or "stream".

name - Name of the audio track



```
Spam:Delete( name )
```

Deletes an audio file. This file has to be loaded into SPAM, see Spam:Load()



```
Spam:DeleteAll()
```

Deletes all audio files inside of SPAM.
