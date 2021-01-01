#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7796736:b0f0f589a8ad4731c443048eaf1935b44b2e4a14; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7585792:c56156e213382b8f39c3e880ba067e622b3b4e85 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY b0f0f589a8ad4731c443048eaf1935b44b2e4a14 7796736 c56156e213382b8f39c3e880ba067e622b3b4e85:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
