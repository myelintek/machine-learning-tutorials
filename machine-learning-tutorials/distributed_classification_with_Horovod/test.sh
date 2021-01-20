#!/bin/bash
DIR="$( dirname "$0" )"
cd $DIR
python centralized_train.py
horovodrun -np 2 -H localhost:2 python distributed_train.py |& grep -v "Read -1"
