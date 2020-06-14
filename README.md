# poly-grains
polyphonic granular synthesizer for norns-mother / organelle

Download the zip folder and place it in your \\norns\we\sidekick\patches\Organelle folder

Refresh the menu so it shows the "install zip file" option and select it. Hopefully you may now select the patch from sidekick.

Copy the touchosc template polygrains.touchosc to your ipad. You'll need to set the address in the patch. It is located in the upper left corner - click "pd touchOSC" and set the ip address and port of your ipad.  You may also need to set the receive port (mine is 10111) so that the ipad shows current settings.

The four encoders on Fates are 
enc1: position 
enc2: grain length 
enc3: grain tempo 
enc4: rand pos

To load a patch - hold but3 and rotate enc1.  Release the button to load.  Also - quick press button3 reloads, which is useful when loading is botched (happens... I'm working on it).

Long-press button 1 to record up to 10 seconds of a sample short press to stop recording.

Short-press button 1 to play sample continuously.

Midi keyboards may be used.  I have it set up for Native Instruments Komplete, but Norns Mother has its own midi-CC map that conflicts a bit with my map - a work in progress?

Samples are located in the \poly-GRAINS\samp directory.  PD is terrible at file handling, so my patch uses list.txt to list all the wav and WAV files in the samp directory.  Sub directories are fine if you want to add one.  To update the list, in SSH 

cd ~\sidekick\patches\Organelle\poly-GRAINS

and run this shell script:

sudo ./listsamples.sh
