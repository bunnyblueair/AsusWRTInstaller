#! /bin/sh

source /koolshare/scripts/base.sh
alias echo_date='echo 【$(TZ=UTC-8 date -R +%Y年%m月%d日\ %X)】:'

echo_date "========================= 重要说明 ============================="
echo_date "本程序用移除安装包无法安装的限制"
echo_date "================================================================"
sleep 1s
echo_date ""
echo_date ""
echo_date ""
echo_date "=====================  开始处理【installer】 ===================="

sed -i 's/\tdetect_package/\t# detect_package/g' /koolshare/scripts/ks_tar_install.sh
sleep 1s
echo_date "=====================  【installer】处理完成 ===================="

dbus set asuswrtinstaller_version="1.0"
dbus set softcenter_module_asuswrtinstaller_version="1.0"
dbus set softcenter_module_asuswrtinstaller_description="已经没用了，请卸载我！！"
dbus set softcenter_module_asuswrtinstaller_install="1"
dbus set softcenter_module_asuswrtinstaller_name="AsusWRTInstaller"
dbus set softcenter_module_asuswrtinstaller_title="AsusWRTInstaller"


sleep 1s
echo_date "======================================"
echo_date "=== 现在您可以在软件中心卸载本程序 ==="
echo_date "=== 卸载后并不会影响之前的修改操作 ==="
echo_date "===   出走的图标，直接卸了就可以   ==="
echo_date "===   破了的图标，直接卸了就可以   ==="
echo_date "======================================"
