#!/bin/bash

stress --vm-bytes $(awk '/MemFree/{printf "%d\n", $2 * 0.5;}' < /proc/meminfo)k --vm-keep -m 1