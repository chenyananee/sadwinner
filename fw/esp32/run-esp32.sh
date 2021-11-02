#!/usr/bin/env bash
cd build
#python $IDF_PATH/components/esptool_py/esptool/esptool.py -p $1 write_flash @flash_project_args
python $IDF_PATH/components/esptool_py/esptool/esptool.py -p /dev/ttyS3 --chip esp32 write_flash @flash_project_args
python $IDF_PATH/tools/idf_monitor.py -p /dev/ttyS3 prj.elf
