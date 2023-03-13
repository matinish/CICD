#!/bin/bash

sshpass -p "student" ssh -o StrictHostKeyChecking=no student@10.54.202.248
sshpass -p "student" scp src/cat/s21_cat student@10.54.202.248:/usr/local/bin

sshpass -p "student" scp src/grep/s21_grep student@10.54.202.248:/usr/local/bin
