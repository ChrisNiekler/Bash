#!/bin/bash

#  By Christian Niekler
#  This script uses google Text-to-Speech to get a mp3 audio file for each argument given.
#  Requires gtts-cli --> pip install gTTS
error="No words provided"
if [ ! -z "$1" ]
	then
		for word in "$@"
		do
			gtts-cli $word --output $word.mp3
		done
	else
		echo -e $error
fi