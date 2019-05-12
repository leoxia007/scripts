#!/bin/bash
VAR=$1;
. build/envsetup.sh;
lunch rr_$VAR-userdebug;
make installclean;
brunch $VAR;
cp $(ls $OUT/RR-P*.zip) -vf /media/sf_E_DRIVE/ROM/
