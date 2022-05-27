#!/bin/sh

echo "Setting macsec_bypass on DUT 4 & 5 as 0"
wr 0x4 0x0F28 0x0000
wr 0x5 0x0F28 0x0000

echo "Setting DUT 4 macsec_ipg_add_en & macsec_flow_control_en as 1"
./phytool/extended_read_write.sh write 0x4 0x0F1F 0x032C
./phytool/extended_read_write.sh read 0x4 0x0F1F
