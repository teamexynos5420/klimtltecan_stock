#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7800832:d9e82ebf9d35005e94d8cc4b2b7df3e862364691; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7585792:023f51a758f77fdeace7b0a79f384959b65486f5 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY d9e82ebf9d35005e94d8cc4b2b7df3e862364691 7800832 023f51a758f77fdeace7b0a79f384959b65486f5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
