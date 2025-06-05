#!/bin/bash

find . -type p -size 0 -exec rm -v {} +

stud_id=sdi

CONFIG_FILE="config_templates/config_fss_template.tpl"
STUDENT_ID=$stud_id
OUTPUT_FILE="config_fss.cfg"

 
rm -rf added_target_dir/*
rm -rf config_target_dir1/*
rm -rf config_target_dir2/*

# Replace "sdi" with the given student_id
sed "s/\/sdiXXX\//\/$STUDENT_ID\//g" "$CONFIG_FILE" > "$OUTPUT_FILE"

# rm ../config_fss.cfg
# cp config_fss.cfg ../

CONFIG_FILE="config_templates/config_nfs_template.tpl"
STUDENT_ID=$stud_id
OUTPUT_FILE="config_nfs.cfg"

# Replace "sdi" with the given student_id
sed "s/\/sdiXXX\//\/$STUDENT_ID\//g" "$CONFIG_FILE" > "$OUTPUT_FILE"
# rm ../config_nfs.cfg
# cp config_nfs.cfg ../


