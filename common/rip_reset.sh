#!/bin/sh

echo "Resetting Rambus IP's in all DUT's"
wr 0x4 0x0FFF 0x0001
wr 0x5 0x0FFF 0x0001