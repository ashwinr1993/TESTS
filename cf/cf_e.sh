#!/bin/sh

echo "Setting macsec_bypass on DUT 4 & 5 as 0"
source TESTS/common/macsec_enable.sh

# Configure DA,SA,EtherType,TX/RX keys
source TESTS/cf/Dut_phytool.sh
# source TESTS/cf/Lp_phytool.sh

# Make CF encryptable/decryptable 
wr 0x4 0x0F06 0x78FC
wr 0x4 0x0F07 0x0000
wr 0x4 0x0F08 0x0000

wr 0x5 0x0F09 0x78FC
wr 0x5 0x0F0A 0x0000
wr 0x5 0x0F0B 0x0000

# Ethertype E/I set agnostic to encrypt/decrypt CF
source TESTS/common/mask_etype.sh

# Enable selective IPG add enable
source TESTS/common/selective_delay_add_en.sh
