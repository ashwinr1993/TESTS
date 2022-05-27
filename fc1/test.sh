#!/bin/sh

echo "Setting DUT 4 macsec_ipg_add_en & macsec_flow_control_en as 1"
./phytool/extended_read_write.sh write 0x4 0x0F1F 0x032C
./phytool/extended_read_write.sh read 0x4 0x0F1F
