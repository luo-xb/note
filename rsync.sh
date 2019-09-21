#!/bin/bash 
while  inotifywait -rqq  /usr/local/nginx/html/
do 
	rsync -av --delete /usr/local/nginx/html/  root@201.1.2.200:/usr/local/nginx/html/    &> /dev/null

done 
