#!/bin/sh

echo "Setting macsec_bypass on DUT 4 & 5 as 0"
wr 0x4 0x0F28 0x0000
wr 0x5 0x0F28 0x0000

# Configure DA,SA,EtherType,TX/RX keys
source TESTS/preemp/Dut_phytool.sh
source TESTS/preemp/Lp_phytool.sh

# Enable Frame Pre-emption on Egress and Ingress Sides
wr 0x4 0x0F29 0x0121
wr 0x5 0x0F29 0x0122
