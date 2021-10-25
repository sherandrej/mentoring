#!/bin/bash
read -p "Type text here: " input

case $input in
	'Bash')
		echo 'Bash - лучший язык программирования'
	;;
	'Python')
		echo 'Python - лучший язык программирования'
	;;
	*)
		echo 'Не удалось распознать строку'
	;;	
esac