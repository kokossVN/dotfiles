#!/usr/bin/env bash




echo $(hostnamectl) | grep -ic	"laptop" 
echo $(hostnamectl) | grep -ic	"desktop" 
