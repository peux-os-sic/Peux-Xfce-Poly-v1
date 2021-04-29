#!/bin/sh

case "$1" in
	--status)	
		if pgrep -x "megasync" > /dev/null; then
			echo ""
		else
			echo ""
		fi
		;;
esac
