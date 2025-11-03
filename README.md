# ENGR5_DHT22_Arduino_MATLAB_ThingSpeak_Project
This project teaches how to:  Interface a DHT22 temperature and humidity sensor with Arduino.  Read real-time sensor data into MATLAB (desktop or online).  Visualize the data using live animated plots.  Send the readings to a ThingSpeak IoT dashboard.  Manage and share the code using GitHub.
This repository contains all code and setup files for interfacing a DHT22 sensor with Arduino, reading data into MATLAB, plotting live graphs, and uploading to ThingSpeak.

## Folders
- **Arduino/**: Contains Arduino sketch
- **MATLAB/**: MATLAB scripts for serial read, plotting, and ThingSpeak upload
- **Docs/**: Guides for GitHub and project setup

## Learning Objectives
- Use MATLAB to acquire and visualize live IoT data
- Interface Arduino sensors with MATLAB
- Send sensor data to the cloud via ThingSpeak
- Version control with GitHub

Instructions
Make sure you are logged into correct GitHub account

In the same browser where MATLAB Online runs:

Go to GitHub.com
Make sure you are logged in as: ie  abiodun6948
If not, log out and log back in with that account

fork this repository
https://github.com/abiodun6948/ENGR5_DHT22_Arduino_MATLAB_ThingSpeak_Project

then clone it by going to home - click on New- click on git clone
enter the repository url ie https://github.com/abiodun6948/ENGR5_DHT22_Arduino_MATLAB_ThingSpeak_Project
Then click ok

Clear old stored credentials (optional)

Windows: !git credential-manager reject https://github.com

Check if you're pushing from the correct GitHub account: (for my own account, yours will be different)
git config --global user.name "abiodun6948"
git config --global user.email "emmanuel.abioye@reedleycollege.edu"

Check that your Git remote URL is correct (no typos!)
Run this in MATLAB Command Window:
!git remote -v
The correct URL should look like:
https://github.com/abiodun6948/ENGR5_DHT22_Arduino_MATLAB_ThingSpeak_Project.git


! git status
! git diff
! git branch

generate a Classic Personal Access Token, not a Fine-Grained token.

Do this:

1. Go to: https://github.com/settings/Developer settings/Personal access tokens

2. Click → Generate new token (classic)
(Scroll down — do not click the Beta Fine-grained option)

3. Name: MATLAB Online Push

4. Check this one box only:
[x] repo    (Full control of private repositories)

5. Click Generate 

6. Copy the token (you will not see it again)

Now re-set the remote URL (no <> brackets)

Back in MATLAB Online Terminal:

!git remote set-url origin https://abiodun6948:YOUR_NEW_CLASSIC_TOKEN@github.com/abiodun6948/ENGR5_DHT22_Arduino_MATLAB_ThingSpeak_Project.git


Replace YOUR_NEW_CLASSIC_TOKEN with the one you just generated.


Then Push successfully (Right click on the script - Select source control and click on push)
or on terminal/command window
!git add .
!git commit -m "Your commit message"   or !git commit -m "port change"
!git push origin main


git rm test.m
git commit -m "Remove test.m"
git push

