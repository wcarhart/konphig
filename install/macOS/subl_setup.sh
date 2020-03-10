#!/bin/bash

wget -P ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages https://packagecontrol.io/Package%20Control.sublime-package
cat << EndOfSubl > ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
{
        "bootstrapped": true,
        "in_process_packages":
        [
        ],
        "installed_packages":
        [
                "A File Icon",
                "ayu",
                "Dockerfile Syntax Highlighting",
                "HighlightWords",
                "Package Control"
        ]
}
EndOfSubl
