#!/bin/bash

# Check if zenity is installed
if ! command -v zenity &> /dev/null
then
    echo "Zenity is not installed. Please install it using Homebrew (e.g., brew install zenity)."
    exit 1
fi

# Prompt the user to select a folder
location=$(zenity --file-selection --directory --title="Select the location to create the jobfolder")

# Check if the user cancelled the selection
if [ -z "$location" ]; then
    echo "No location selected. Exiting."
    exit 1
fi

# Define the base jobfolder directory
jobfolder="$location/jobfolder"

# Create the main jobfolder and subdirectories
mkdir -p "$jobfolder/01_PROJECT_FILES"
mkdir -p "$jobfolder/02_VIDEO"
mkdir -p "$jobfolder/03_AUDIO/01_VO"
mkdir -p "$jobfolder/03_AUDIO/02_MUSIC"
mkdir -p "$jobfolder/03_AUDIO/03_SFX"
mkdir -p "$jobfolder/03_AUDIO/04_SOUNDBITES"
mkdir -p "$jobfolder/04_GRAPHICS"
mkdir -p "$jobfolder/05_DOCS"
mkdir -p "$jobfolder/06_EXPORTS"

# Notify the user that the directories were created successfully
zenity --info --text="Directory structure created at $jobfolder"
