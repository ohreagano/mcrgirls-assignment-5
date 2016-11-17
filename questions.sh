#!/bin/bash

# Put c9 username in a variable to use in mysql command lines
echo -e "What is your c9 username?"
read USERNAME

# Import dump from .SQL file
echo -e "Now importing dump in answers.sql to database5..."
mysql --user="$USERNAME" --password database5 < answers.sql

# Ask questions and assign user answers to variables
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

# Generate date stamp and unique ID for each pass through script
# Assign each to a variable
DATE=$(date +"%F_%T")
uuid=$(cat /proc/sys/kernel/random/uuid)

echo -e "\e[0mNow inserting your answers into database5..."

# Enter mysql command line and execute command that enters row of data into table 
mysql --user="$USERNAME" --password="" --database="database5" --execute="
INSERT INTO table5 (UUID, Date, Name, Age, Movie, Song, Book)
VALUES ('$uuid', '$DATE', '$NAME', '$AGE', '$MOVIE', '$SONG', '$BOOK');"

echo -e "Now dumping database5 into answers.sql..."
# Output dump into .SQL file
mysqldump --user="$USERNAME" --password="" database5 > answers.sql

echo -e "Done."
