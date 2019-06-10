#!/bin/bash

cd "${0%/*}"
sudo rm -r /System/Library/Extensions/AirPortBrcmNIC-MFG.kext
sudo rm -r /System/Library/Extensions/IO80211Family.kext
sudo rm -r /System/Library/Extensions/IO80211FamilyV2.kext
sudo rm -r /System/Library/Extensions/corecapture.kext
sudo rm -r /System/Library/Extensions/IONetworkingFamily.kext

sudo cp -r BrcmFirmwareRepo.kext /Library/Extensions
sudo cp -r BrcmPatchRAM2.kext /Library/Extensions
sudo cp -r corecapture.kext /System/Library/Extensions
sudo cp -r IONetworkingFamily.kext /System/Library/Extensions
sudo cp -r IO80211Family.kext /System/Library/Extensions
sudo cp -r CoreCaptureResponder.kext /System/Library/Extensions

sudo rm /System/Library/PrelinkedKernels/prelinkedkernel
sudo rm /System/Library/Caches/com.apple.kext.caches/Startup/kernelcache

sudo chmod -R 755 /System/Library/Extensions
sudo chmod -R 755 /Library/Extensions

sudo chown -R root:wheel /System/Library/Extensions
sudo chown -R root:wheel /Library/Extensions

sudo touch /System/Library/Extensions
sudo touch /Library/Extensions


udo kextcache -i /

sudo kextcache -q -update-volume /
sudo kextcache -system-caches