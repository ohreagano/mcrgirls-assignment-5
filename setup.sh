#!/bin/bash
# Run this script if user has not used the assignment4_questions database
# Ask for c9 username to use 
echo -e "What is your c9 username?"
read USERNAME

# enter mysql command line
mysql -u $USERNAME -p << EOF
--Setup database
CREATE DATABASE assignment4_questions;

--Setup table
USE assignment4_questions;
CREATE TABLE assignment4_answers ( UUID VARCHAR(225),
                                   Date VARCHAR(225),
                                   Name VARCHAR(225),
                                   Age INT
                                   Movie VARCHAR(225),
                                   Song VARCHAR(225),
                                   Book VARCHAR(225));

EOF
# closed mysql command line