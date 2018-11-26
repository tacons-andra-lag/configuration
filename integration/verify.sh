#!/bin/bash
for f in $(ls names); do
	name=$(cat names/$f)
	length=$(node -e "console.log('$name'.length)")
	if [ $length -gt 50 ]; then
		echo "Name of $f too long: $name ($length)"
		exit 1
	fi
done

