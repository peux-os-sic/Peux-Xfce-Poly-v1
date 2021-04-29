#!/bin/sh

case "$1" in
	--status)			
		if pgrep -x "shortwave" > /dev/null; then
			echo "露"

		else
			echo ""
		fi
		;;
esac
