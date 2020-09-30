#!/bin/bash
#
# Script: my-pi-temp.sh
# Copyright (C) 2020 Alessio Rossini <alessior@live.com>
# Original source code available at https://github.com/AxReds
#
# Purpose: Display the ARM CPU and GPU  temperature of Raspberry Pi 2/3 
# Author: Vivek Gite <www.cyberciti.biz> under GPL v2.x+
# Modified by: Alessio Rossini <alessior@live.com>
#
# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software Foundation;
# either version 2 of the License, or any later version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU General Public License for more details
# https://opensource.org/
#
# You should have received a copy of the GNU General Public License along with this program; 
# if not, write to the Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
#
#
# This improved version starts from the idea of Alexander Bilz https://gist.github.com/lxndrblz
# Original source code at https://gist.github.com/lxndrblz/27e6ca08363bbc8be994a2f7b1a9d523
#
#
# -------------------------------------------------------
cpu=$(</sys/class/thermal/thermal_zone0/temp)
clear
echo ""
echo ""
echo "$(date) @ $(hostname)"
echo "-------------------------------------------"
echo ""
echo "CPU => $((cpu/1000))'C"
echo "GPU => $(/opt/vc/bin/vcgencmd measure_temp)"
echo ""
echo "-------------------------------------------"
echo ""
echo ""
