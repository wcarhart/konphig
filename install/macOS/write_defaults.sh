#!/bin/bash

# Add quit option to Finder
defaults write com.app.finder QuitMenuItem -bool true ; killall Finder
