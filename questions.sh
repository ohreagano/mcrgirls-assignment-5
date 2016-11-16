#!/bin/bash


# Ask for c9 username to use 
echo -e "What is your c9 username?"
read USERNAME

# import the dump file
mysql --user="$USERNAME" --password database5 < answers.sql

echo -e "\e[31mWhat is your name?"
read NAME
echo -e "\e[32mWhat is your age?"
read AGE
echo -e "\e[34mWhat is your favorite movie?"
read MOVIE
echo -e "\e[95mWhat is your favorite song?"
read SONG
echo -e "\e[93mWhat is your favorite book?"
read -e BOOK

DATE=$(date +"%F_%T")
uuid=$(cat /proc/sys/kernel/random/uuid)

echo -e "\e[30m$uuid,$DATE,$NAME,$AGE,$MOVIE,$SONG,$BOOK" >> answers.csv

# Enter mysql command line - Put all mysql commands inside "EOF" tags

mysql --user="$USERNAME" --password="" --database="database5" --execute="
INSERT INTO table5 (UUID, Date, Name, Age, Movie, Song, Book)
VALUES ('$uuid', '$DATE', '$NAME', '$AGE', '$MOVIE', '$SONG', '$BOOK');"

# end of mysql command line

# output the dump

mysqldump --user="$USERNAME" --password="" database5 > answers.sql
