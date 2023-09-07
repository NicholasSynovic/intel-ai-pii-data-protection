#!/bin/bash

kaggle datasets download sameersmahajan/people-wikipedia-data
unzip people-wikipedia-data.zip -d people-wikipedia-data
mv people-wikipedia-data/people_wiki.csv .
