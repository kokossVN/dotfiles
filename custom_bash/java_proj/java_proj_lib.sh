#!/usr/bin/env bash

JAVA_PROJECT_PATH="/home/kokoss/learn/java/proj"
JAVA_PROJECT_LIST=($(ls $JAVA_PROJECT_PATH))
TMUX_JAVA_PROJECT=($(tmuxifier ls | grep "java-"))
TMUXIFIER_PATH="/home/kokoss/.tmuxifier/layouts"
TEMP_PATH="/home/kokoss/.tmuxifier/layouts/javatemplate.session.sh"

START_UP() {
	COUNT=${#TMUX_JAVA_PROJECT[@]}
	[[ -z $TMUX_JAVA_PROJECT ]] && echo "No project found" && exit 1
	echo "Select your project"
	for ((i = 0; i < $COUNT; i++)); do
		echo "$i) ${TMUX_JAVA_PROJECT[$i]}"
	done
	echo ""
	echo ""
	echo ""
	while [[ true ]]; do
		read -p "Chose your project [+ to create]: " number
		[[ $number = \+ ]] && CREATE_PROJECT && exit 1
		[[ $number != [0-$((COUNT - 1))] ]] && echo "Not in range! Try Again" && continue
		break
	done
	tmuxifier s ${TMUX_JAVA_PROJECT[$number]}
}

INITAL_PROJECT() {
	mkdir $1
	mkdir $1/bin $1/lib $1/src
}

CREATE_PROJECT() {
	while [ true ]; do
		read -p "New project name : java-" PROJ_NAME
		# check if no input
		[[ -z $PROJ_NAME ]] && echo "Empty!" && continue
		# check if exist
		[[ $(echo ${TMUX_JAVA_PROJECT[@]} | grep -ic $PROJ_NAME) -gt 0 ]] && echo "Project name found! Try Again" && continue
		# check if project folder not exist
		[[ ! -e $JAVA_PROJECT_PATH/$PROJ_NAME ]] && echo "Created $PROJ_NAME" && INITAL_PROJECT $JAVA_PROJECT_PATH/$PROJ_NAME
		# make tmuxifier profile
		PROJ_PROFILE="java-$PROJ_NAME.session.sh"
		echo "Creating your project..." && cp $TEMP_PATH $TMUXIFIER_PATH/$PROJ_PROFILE && chmod +x $TMUXIFIER_PATH/$PROJ_PROFILE
		#project path in to tmuxifier
		sed -i "1isession_root \"$JAVA_PROJECT_PATH/$PROJ_NAME\" " $TMUXIFIER_PATH/$PROJ_PROFILE
		sed -i "s\temp\\$PROJ_NAME\g" $TMUXIFIER_PATH/$PROJ_PROFILE
		break
	done
	echo "$PROJ_NAME"
	tmuxifier s "java-$PROJ_NAME"
}
