#!/bin/bash
read file_name
read file_size

dd if=/dev/zero of=$file_name  bs=$file_size count=1

echo "BASH VERSION IS $BASH_VERSION"
echo "BASH HOME IS $HOME"
echo "BASH PWD IS $PWD"
echo "BASH NAME  IS $BASH"
echo  "BASH MACHTYPE identifies the system hardware $MACHTYPE"