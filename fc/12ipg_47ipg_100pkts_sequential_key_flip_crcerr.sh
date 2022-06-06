#!/bin/sh

# Setting macsec_bypass on DUT 4 & 5 as 0
source TESTS/common/macsec_enable.sh

# Setting DUT 4 macsec_ipg_add_en & macsec_flow_control_en as 1
wr 0x4 0x0F1F 0x032C

# Configure DUT/LP to encrypt/decrypt
source TESTS/fc/Dut_phytool.sh
source TESTS/fc/Lp_phytool.sh

# mask DA/SA/Ethertype
source TESTS/common/mask_da_sa.sh
source TESTS/common/mask_etype.sh

# Setting selective delay addition enable
source TESTS/common/selective_delay_add_en.sh

# Flip DUT egress key bits
# wr 0x04 0x0F06 0x0014
# wr 0x04 0x0F07 0xCCDD
# wr 0x04 0x0F08 0xEEFF
