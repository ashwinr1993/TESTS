#!/bin/sh

echo "Setting macsec_bypass on DUT 4 & 5 as 0"
source TESTS/common/macsec_enable.sh

# Configure DA,SA,EtherType,TX/RX keys
source TESTS/ptp_preemp/Dut_phytool.sh
source TESTS/ptp_preemp/Lp_phytool.sh

# Enable Frame Pre-emption on Egress and Ingress Sides
source TESTS/common/enable_frame_preemption.sh

# Ethertype E/I set agnostic to encrypt/decrypt PTP frames
source TESTS/common/mask_etype.sh
