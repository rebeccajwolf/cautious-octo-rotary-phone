#!/bin/bash
nohup gunicorn keep_alive:app --bind 0.0.0.0:8080 &
sh ./clean_mem.sh ;
python3 ms_rewards_farmer.py --everyday --fast --headless --telegram "${TOKEN}" "${CHAT_ID}" ;
