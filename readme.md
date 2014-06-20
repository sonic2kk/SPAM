SPAM - Simple Powerful Audio Manager
====================================

SPAM was created to be a simple, yet powerful audio manager. I created it as part of a project I was working on, but I thought it would be useful to other people. SPAM is to be designed to be easy to use, lightweight and compact.



Spam:Load( name, pathToAudio, type )

Loads an audio file into SPAM.

name - A shorthand name used to access the song.
pathToAudio - Path to the audio file.
type - Type of audio clip. Can be either "static" or "stream". See http://www.love2d.org/wiki/SourceType



Spam:Play( name )

Plays an audio file. This file has to be loaded into SPAM, see Spam:Load()

name - Name of the audio file loaded into SPAM



Spam:Loop( name )

Loops an audio file. This file has to be loaded into SPAM, see Spam:Load()

name - Name of the audio file you've loaded into SPAM



Spam:Stop( name )

Stops an audio file. This file has to be loaded into SPAM, see Spam:Load()

name - Name of the audio file you've loaded into SPAM



Spam:StopAll()

Stops all playing audio. Only stops audio loaded into SPAM. Any audio playing outside of SPAM will not be stopped.



Spam:Get( name )

Gets an audio file. This file has to be loaded into SPAM, see Spam:Load(). Returns the audio source, not the audio name.



Spam:Delete( name )

Deletes an audio file. This file has to be loaded into SPAM, see Spam:Load()



Spam:DeleteAll()

Deletes all audio files inside of SPAM.
