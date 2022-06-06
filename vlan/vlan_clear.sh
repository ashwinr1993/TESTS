#!/bin/sh

r=$(( $RANDOM % 5 ));

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

# make VLAN part clear
if [ $r == 0 ]
then
echo "Set as 12 : Only DA, SA"
wr 0x4 0x0F06 0x7004
wr 0x4 0x0F07 0x0c00
wr 0x4 0x0F08 0x000c
elif [ $r == 1 ]
then 
echo "Set as 16 : Only DA, SA, VLAN-Lvl-4"
wr 0x4 0x0F06 0x7004
wr 0x4 0x0F07 0x0c00
wr 0x4 0x0F08 0x0010
elif [ $r == 2 ]
then 
echo "Set as 20 : Only DA, SA, VLAN-Lvl-4, VLAN-Lvl-3"
wr 0x4 0x0F06 0x7004
wr 0x4 0x0F07 0x0c00
wr 0x4 0x0F08 0x0014
elif [ $r == 3 ]
then 
echo "Set as 20 : Only DA, SA, VLAN-Lvl-4, VLAN-Lvl-3, VLAN-Lvl-2"
wr 0x4 0x0F06 0x7004
wr 0x4 0x0F07 0x0c00
wr 0x4 0x0F08 0x0018
else
echo "Set as 20 : Only DA, SA, VLAN-Lvl-4, VLAN-Lvl-3, VLAN-Lvl-2, VLAN-Lvl-1"
wr 0x4 0x0F06 0x7004
wr 0x4 0x0F07 0x0c00
wr 0x4 0x0F08 0x0018
fi
