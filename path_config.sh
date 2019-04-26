#!/bin/bash

# DO NOT COMMIT CHANGES TO THIS FILE! Make a local copy and follow the
# instructions below.

# Copy this to /etc/profile.d/ to auto-set environment vars on login.
# Or, make a copy of this, customize, and run immediately before the training
# binary:
# cp path_config.sh ~/my_path_config.sh
# source ~/my_path_config.sh; python main.py --config ../config/demo.conf \
#   --overrides "do_pretrain = 0"

# Default environment variables for JSALT code. May be overwritten by user.
# See https://github.com/jsalt18-sentence-repl/jiant for more.

##
# Example of custom paths for a local installation:
# export JIANT_PROJECT_PREFIX=/Users/Bowman/Drive/JSALT
# export JIANT_DATA_DIR=/Users/Bowman/Drive/JSALT/jiant/glue_data
# export JIANT_DATA_DIR=/home/raghu1991_p_gmail_com/
# export WORD_EMBS_FILE=~/glove.840B.300d.txt
# export FASTTEXT_MODEL_FILE=None
# export FASTTEXT_EMBS_FILE=None

export JIANT_PROJECT_PREFIX=$HOME/jiant_exp
export JIANT_DATA_DIR=$HOME/data
export NFS_PROJECT_PREFIX=/nfs/jsalt/exp/nkim
export NFS_DATA_DIR=/nfs/jsalt/home/

function changebashpaths() {
	output="export JIANT_PROJECT_PREFIX="$JIANT_PROJECT_PREFIX
	echo $output >> ~/.bashrc
	output="export JIANT_DATA_DIR="$JIANT_DATA_DIR
	echo $output >> ~/.bashrc
	output="export NFS_PROJECT_PREFIX="$NFS_PROJECT_PREFIX
	echo $output >> ~/.bashrc
	output="export NFS_DATA_DIR="$NFS_DATA_DIR
	echo $output >> ~/.bashrc
  source ~/.bashrc
}
read -r -p "Do you want to add alter to .bashrc to add these paths? (Y/N)" response
if [[ $response =~ ^[Yy]$ ]]
	then
		changebashpaths
fi

# echo "Loaded Sam's config."

