#!/bin/sh
# Terminal Toolkit
# Version: 2.0
# Created by: Mason Orgill

REPEATCHOICE="y"
CHOICE=1
SECONDCHOICE=1
CAFFTIME=0

echo ""
echo "TERMINAL TOOLKIT 2.0"
echo ""
echo "Created by: Mason Orgill"
echo ""

while [ $REPEATCHOICE = "y" ]
do
	echo "Select the group of commands you would like to execute:"
	echo ""
	echo "1. 'killall' commands"
	echo "2. 'caffeinate' commands"
	echo "3. Screenshot commands"
	echo "4. Filesystem commands"
	echo "5. System commands"
	echo "6. Software update commands"
	echo "7. Network commands"
	echo "8. Misc."
	echo ""
	read -p "Enter the number of your choice: " CHOICE
	echo ""

	if [ $CHOICE = 1 ]; then
		echo "Select the command you would like to execute:"
		echo ""
		echo "1. Kill Finder"
		echo "2. Kill Dock"
		echo "3. Kill SystemUIServer"
		echo ""
		read -p "Enter the number of your choice: " SECONDCHOICE
		echo ""

		if [ $SECONDCHOICE = 1 ]; then
			echo "Executing..."
			echo ""
			sleep 2
			killall Finder
			echo "OPERATION COMPLETED!"
			sleep 1
		elif [ $SECONDCHOICE = 2 ]; then
			echo "Executing..."
			echo ""
			sleep 2
			killall Dock
			echo "OPERATION COMPLETED!"
			sleep 1
		elif [ $SECONDCHOICE = 3 ]; then
			echo "Executing..."
			echo ""
			sleep 2
			killall SystemUIServer
			echo "OPERATION COMPLETED!"
			sleep 1
		fi

	elif [ $CHOICE = 2 ]; then
		echo "Select the command you would like to execute:"
		echo ""
		echo "1. Prevent display from sleeping"
		echo "2. Prevent system from idle sleep"
		echo "3. Prevent system from sleeping (only works on AC power)"
		echo "4. Declare that the system user is active"
		echo "5. Specify a the duration of time to timeout"
		echo ""
		read -p "Enter the number of your choice: " SECONDCHOICE
		echo ""

		if [ $SECONDCHOICE = 1 ]; then
			echo "Executing..."
			echo ""
			sleep 2
			caffeinate -d
			echo "OPERATION COMPLETED!"
			sleep 1
		elif [ $SECONDCHOICE = 2 ]; then
			echo "Executing..."
			echo ""
			sleep 2
			caffeinate -i
			echo "OPERATION COMPLETED!"
			sleep 1
		elif [ $SECONDCHOICE = 3 ]; then
			echo "Executing..."
			echo ""
			sleep 2
			caffeinate -s
			echo "OPERATION COMPLETED!"
			sleep 1
		elif [ $SECONDCHOICE = 4 ]; then
			echo "Executing..."
			echo ""
			sleep 2
			caffeinate -u
			echo "OPERATION COMPLETED!"
			sleep 1
		elif [ $SECONDCHOICE = 3 ]; then
			echo "Executing..."
			echo ""
			sleep 2
			read -p "How long would you like to caffeinate for (in seconds)?: " CAFFTIME
			echo ""
			caffeinate -t $CAFFTIME
			echo "OPERATION COMPLETED!"
			sleep 1
		fi

	elif [ $CHOICE = 3 ]; then
		echo "Select the command you would like to execute:"
		echo ""
		echo "1. Disable screenshot drop shadows"
		echo "2. Enable screenshot drop shadows"
		echo "3. Change screenshot file format to PDF"
		echo "4. Change screenshot file format to PNG"
		echo "5. Change screenshot file format to JPG"
		echo ""
		read -p "Enter the number of your choice: " SECONDCHOICE
		echo ""

		if [ $SECONDCHOICE = 1 ]; then
			echo "Executing..."
			echo ""
			echo "Disabling screenshot drop shadows…"
			echo ""
			sleep 2
			defaults write com.apple.screencapture disable-shadow -bool TRUE
			echo "OPERATION COMPLETED!"
			sleep 1
		elif [ $SECONDCHOICE = 2 ]; then
			echo "Executing..."
			echo ""
			echo "Enabling screenshot drop shadows…"
			echo ""
			sleep 2
			defaults write com.apple.screencapture disable-shadow -bool FALSE
			echo "OPERATION COMPLETED!"
			sleep 1
		elif [ $SECONDCHOICE = 3 ]; then
			echo "Executing..."
			echo ""
			echo "Changing screenshot file format to PDF..."
			echo ""
			sleep 2
			defaults write com.apple.screencapture type PDF
			killall SystemUIServer
			echo "OPERATION COMPLETED!"
			sleep 1
		elif [ $SECONDCHOICE = 4 ]; then
			echo "Executing..."
			echo ""
			echo "Changing screenshot file format to PNG..."
			echo ""
			sleep 2
			defaults write com.apple.screencapture type png
			killall SystemUIServer
			echo "OPERATION COMPLETED!"
			sleep 1
		elif [ $SECONDCHOICE = 5 ]; then
			echo "Executing..."
			echo ""
			echo "Changing screenshot file format to PNG..."
			echo ""
			sleep 2
			defaults write com.apple.screencapture type jpg
			killall SystemUIServer
			echo "OPERATION COMPLETED!"
			sleep 1
		fi
	fi

	echo ""
	read -p "Would you like to use this toolkit again (y/n): " REPEATCHOICE
	echo ""

done
