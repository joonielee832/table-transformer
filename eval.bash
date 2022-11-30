#!/bin/bash

MISC_FOLDER='/home/misc/table-former'
cd src
python3 main.py --mode 'eval' \
--data_type detection \
--config_file detection_config.json \
--data_root_dir /home/data/table_detection_dataset \
--model_load_path "${MISC_FOLDER}/output_trained_5/model_100.pth" \
--debug \
--filter \
--crop \
--debug_save_dir "${MISC_FOLDER}/output_trained_5/samples_all_filtered"
