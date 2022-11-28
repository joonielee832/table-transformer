#!/bin/bash

data_root="/home/data/table_detection_dataset"
MISC_FOLDER='/home/misc/table-former'

cd src
python3 main.py --data_type detection \
--config_file detection_config.json \
--data_root_dir $data_root \
--model_load_path /home/misc/table-former/pubtables1m_detection_detr_r18.pth \
--model_save_dir "${MISC_FOLDER}/output_trained_6" \
--load_weights_only \
--checkpoint_freq 10
