# DUT1 egress etype mask
wr 0x4 0x0F06 0x2030
wr 0x4 0x0F07 0x0000
wr 0x4 0x0F08 0x0000

# DUT2 egress etype mask
wr 0x5 0x0F06 0x2030
wr 0x5 0x0F07 0x0000
wr 0x5 0x0F08 0x0000

# DUT1 ingress etype mask
wr 0x4 0x0F09 0x2030
wr 0x4 0x0F0A 0x0000
wr 0x4 0x0F0B 0x0000

# DUT2 ingress etype mask
wr 0x5 0x0F09 0x2030
wr 0x5 0x0F0A 0x0000
wr 0x5 0x0F0B 0x0000
