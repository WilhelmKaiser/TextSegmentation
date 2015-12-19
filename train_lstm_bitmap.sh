#!/bin/bash

#BSUB -J "TextSegmentation experience"
#BSUB -eo /home/kurse/oe14ireg/TextSegmentation/experience/stderr.txt
#BSUB -oo /home/kurse/oe14ireg/TextSegmentation/experience/stdout.txt
#BSUB -n 1
#BSUB -M 10000
#BSUB -W 60
#BSUB -x
#BSUB -q kurs3

cd /home/kurse/oe14ireg/TextSegmentation/experience/
THEANO_FLAGS='mode=FAST_RUN,device=gpu,force_device=True,floatX=float32' python3 /home/kurse/oe14ireg/TextSegmentation/experience/LSTM_bitmap.py training_x training_y LSTM_bitmap.model