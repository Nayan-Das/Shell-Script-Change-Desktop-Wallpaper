#!/bin/bash

rm ~/apod/*.jpg ~/apod/*.html ~/apod/*.txt
user=$(whoami)
cd ~/apod
wget https://www.pexels.com/search/HD%20wallpaper/HD%20Wallpapers%20%C2%B7%20Pexels.html
d='http://apod.nasa.gov/apod/'
grep 'href="https://images' HD\ Wallpapers\ ·\ Pexels.html > temp.txt
b=$(awk -F "\"" '{print $2}' temp.txt) 
echo $b > temp2.txt
c=$(awk '{print NF}' temp2.txt)
echo $c
wget $(awk '{print $e}' temp2.txt)
imname=$(ls *jpg)
echo $imname
for i in {1..$imname}
do
echo $i
/usr/bin/gsettings set org.gnome.desktop.background picture-uri file:///$(pwd)/$i
sleep 5
done


