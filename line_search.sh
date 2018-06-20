#!/bin/bash
# runs both Matlab search script and Python script to generate html

# run the matlab main.m file
cat main.m | matlab -nodesktop -nosplash

# generate html from python script
pyoutput=$( python LineExp.py ~/CoherenceTool/output_buffer )

# create coherences directory in ~/public_html
mkdir -p ~/public_html/coherences/

# take output of html and paste it into the correct line in index.html
sed -i "0,/ul\>/  s@.*ul\>.*@&\n$pyoutput@" ~/public_html/coherences/index.html 

# copy outputs from matlab script to public_html folder for website
cp -r ~/CoherenceTool/output_buffer/* ~/public_html/coherences/
rm -rf ~/CoherenceTool/output_buffer

# done
echo "Job complete"
