#!/bin/bash

# Καθαρισμός κενών named pipes
find . -type p -size 0 -exec rm -v {} +

# Καθαρισμός καταλόγων
rm -rf added_target_dir/*
rm -rf config_target_dir1/*
rm -rf config_target_dir2/*

# Απόλυτο μονοπάτι
FULLPATH=$(pwd)

# fss config
CONFIG_FILE="config_templates/config_fss_template.tpl"
OUTPUT_FILE="config_fss.cfg"
sed "s#fullpathXXX#${FULLPATH}#g" "$CONFIG_FILE" > "$OUTPUT_FILE"

# nfs config
CONFIG_FILE="config_templates/config_nfs_template.tpl"
OUTPUT_FILE="config_nfs.cfg"
sed "s#fullpathXXX#${FULLPATH}#g" "$CONFIG_FILE" > "$OUTPUT_FILE"

# fss test case
CONFIG_FILE="config_templates/test_case_fss_commands.txt"
OUTPUT_FILE="test_case_fss_commands.txt"
sed "s#fullpathXXX#${FULLPATH}#g" "$CONFIG_FILE" > "$OUTPUT_FILE"

# nfs test case
CONFIG_FILE="config_templates/test_case_nfs_commands.txt"
OUTPUT_FILE="test_case_nfs_commands.txt"
sed "s#fullpathXXX#${FULLPATH}#g" "$CONFIG_FILE" > "$OUTPUT_FILE"


# Προαιρετική αντιγραφή στον πάνω φάκελο
# cp config_fss.cfg ../
# cp config_nfs.cfg ../
