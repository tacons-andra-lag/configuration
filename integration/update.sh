#!/bin/bash

for f in $(ls names); do
	id=$(cat integration/ids/$f)
	echo $f - $(cat integration/ids/$f) - $(cat names/$f)
	integration/nickname $id < names/$f
done
