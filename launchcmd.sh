#!/bin/bash

launch() {
	echo setsid nohup "$*" &
	setsid nohup "$*" &
}

$launch "$1"
