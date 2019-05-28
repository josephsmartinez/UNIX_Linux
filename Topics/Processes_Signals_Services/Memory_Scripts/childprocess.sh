#!/bin/bash

(x=1; echo "This is a test sh script" > ~/output.file; while true; do echo "running for : $x sec" >> ~/output.file; sleep 1; x=$(($x + 1)); done)