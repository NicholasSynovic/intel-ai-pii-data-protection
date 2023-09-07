#!/bin/bash

python generate_reference_dataset.py -n 20000 -d ../data/people_wiki.csv -o ../data/input_reference_dataset.csv
sh build_name_generator_rnn.sh
