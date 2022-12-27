#!/bin/bash

wget -P ~/Library/Application\ Support/Sublime\ Text/Installed\ Packages https://packagecontrol.io/Package%20Control.sublime-package
cat << EndOfSubl > ~/Library/Application\ Support/Sublime\ Text/Packages/User/Package\ Control.sublime-settings
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
				"JSON Reindent",
                "Package Control"
				"Terminus"
        ]
}
EndOfSubl
