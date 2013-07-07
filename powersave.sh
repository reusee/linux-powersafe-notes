for i in 0 1 2 3 4 5 ; do
  echo min_power>/sys/class/scsi_host/host${i}/link_power_management_policy
done

for i in /sys/bus/pci/devices/*/power/control ; do
  echo auto > ${i}
done

#for i in /sys/bus/usb/devices/*/power/control ; do
#  echo auto > ${i}
#done

for i in /sys/devices/system/cpu/cpu?/cpufreq/scaling_governor ; do
  echo ondemand > ${i}
done

echo 30 > /sys/module/snd_hda_intel/parameters/power_save
#echo N > /sys/module/snd_hda_intel/parameters/power_save_controller

echo dynpm > /sys/class/drm/card0/device/power_method
