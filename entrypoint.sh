#!/bin/bash
sh ./clean_mem.sh ;
exec gunicorn keep_alive:app --bind 0.0.0.0:8080 &
python3 ms_rewards_farmer.py --everyday --privacy --error --fast --telegram --dont-check-for-updates --currency INR --dont-check-internet;
