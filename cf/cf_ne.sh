#!/bin/sh

echo "Setting macsec_bypass on DUT 4 & 5 as 0"
wr 0x4 0x0F28 0x0000
wr 0x5 0x0F28 0x0000

# Configure DA,SA,EtherType,TX/RX keys
source TESTS/cf/Dut_phytool.sh
# source TESTS/cf/Lp_phytool.sh

# Make CF not encryptable/decryptable 
wr 0x4 0x0F06 0x78FC
wr 0x4 0x0F07 0x0000
wr 0x4 0x0F08 0x0008

wr 0x5 0x0F09 0x78FC
wr 0x5 0x0F0A 0x0000
wr 0x5 0x0F0B 0x0008

# Enable selective IPG add enable
wr 0x4 0x0F29 0x0124
wr 0x5 0x0F29 0x0124