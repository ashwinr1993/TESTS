#!/bin/sh

echo "Setting macsec_bypass on DUT 4 & 5 as 0"
source TESTS/common/macsec_enable.sh

# Configure DA,SA,EtherType,TX/RX keys
source TESTS/preemp/Dut_phytool.sh
source TESTS/preemp/Lp_phytool.sh

# mask DA/SA/Ethertype
source TESTS/common/mask_da_sa.sh
source TESTS/common/mask_etype.sh

# Enable Frame Pre-emption on Egress and Ingress Sides
source TESTS/common/enable_frame_preemption.sh
