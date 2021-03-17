#!/bin/bash

#  By Christian Niekler
#  This script uses google Text-to-Speech to get a mp3 audio file for each argument given.
#  Requires gtts-cli --> pip install gTTS
error="No words provided"
if [ ! -z "$1" ]
	then
		str="'$*'"
		filename=${str//[[:blank:]]/}
		gtts-cli "$str" --output $filename.mp3
	else
		echo -e $error
fi