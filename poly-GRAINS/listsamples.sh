#/bin/bash
find . -name '*.wav' -o -name "*.WAV"  > shortlist.txt
sort shortlist.txt > list.txt
sudo rm shortlist.txt
