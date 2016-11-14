#!/bin/bash

# Ask for c9 username to use 
echo -e "What is your c9 username?"
read USERNAME
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

# Generate date stamp and unique id number
DATE=$(date +"%F_%T")
uuid=$(cat /proc/sys/kernel/random/uuid)

# Send answers to CSV file
echo -e "\e[30m$uuid,$DATE,$NAME,$AGE,$MOVIE,$SONG,$BOOK" >> answers.csv

# Use assignment4_questions database
mysql "USE assignment4_questions";

# Send answers into mySQL database
mysql -u $USERNAME -p 
    "INSERT INTO assignment4_answers (UUID,Date,Name,Age,Movie,Song,Book)
    VALUES ($uuid, $DATE, $NAME, $AGE, $MOVIE, $SONG, $BOOK);"