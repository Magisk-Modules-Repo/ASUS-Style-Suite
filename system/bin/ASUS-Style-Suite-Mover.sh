#!/system/bin/sh
# ======================================================================
# Module: ASUS-Style-Suite
# Created by Rom@xda-developers

# root check
if ! ls /data/data 1>/dev/null 2>&1; then
    echo -e "(!) You must run me as root\n(type su<enter>\nDetach\nor\nsu -c Detach -<option>)\n"
    exit 1
fi

echo -e "\n\n\nWelcome into ASUS-Style-Suite menu\n\nYou want to move wallpapers contained in this module to a specific folder ?\nSo write the full path please."; sleep 4;

read newdir

case $newdir in
	Y|y|Yes|yes|YES)
				mv -f /sdcard/Default ROG Phone*.gif "$newdir"
				echo Done!
;;
	N|n|No|no|NO)
				echo -e "\nHave a good day\n\n"
				exit 0
;;
esac
