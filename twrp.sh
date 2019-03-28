export ALLOW_MISSING_DEPENDENCIES=true;
. build/envsetup.sh; 
lunch omni_hi3660-eng;
mka recoveryimage
