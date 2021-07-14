sudo apt -y update &&
sudo apt -y upgrade &&
sudo apt -y dist-upgrade &&
sudo apt -y full-upgrade &&
sudo apt -y install xinit firefox-esr unzip zip stterm xbacklight ntfs-3g git tlp scrot alsa-utils x11-xserver-utils &&
cd ~ &&
curl -o ~/config.zip https://codeload.github.com/ahmadsiddeeq0/config/zip/master &&
unzip -d ~ ~/config.zip &&
curl -o ~/nanorc.zip https://codeload.github.com/scopatz/nanorc/zip/master &&
unzip -d ~ ~/nanorc.zip &&
sudo cp ~/nanorc-master/* /usr/share/nano &&
sudo cp ~/config-master/profile/copy/profile /etc &&
sudo cp ~/config-master/bash/root/copy/bash.bashrc /etc &&
cp ~/config-master/bash/normal/copy/bashrc ~/.bashrc &&
sudo cp ~/config-master/nanorc/copy/nanorc /etc &&
cp ~/config-master/xinitrc/copy/xinitrc ~/.xinitrc &&
sudo mkdir -p /etc/X11/xorg.conf.d &&
sudo cp ~/config-master/grub/copy/grub /etc/default &&
sudo update-grub &&
sudo cp ~/config-master/xbacklight/copy/20-intel.conf /etc/X11/xorg.conf.d &&
sudo cp ~/config-master/sowm/copy/sowm /usr/bin/ &&
sudo cp ~/config-master/touchpad/copy/99-synaptics-overrides.conf /etc/X11/xorg.conf.d &&
sudo cp ~/config-master/pcspkr/copy/blacklist.conf /etc/modprobe.d &&
sudo cp ~/config-master/tlp/copy/tlp /etc/default &&
sudo cp ~/config-master/keyboard/copy/keyboard /etc/default &&
mkdir -p ~/.config/procps &&
cp ~/config-master/top/copy/toprc ~/.config/procps/toprc &&
cp ~/config-master/others/copy/others ~ &&
sudo apt -y purge curl vim.tiny xterm make gcc libx11-dev &&
sudo apt -y autoremove &&
sudo apt -y autoclean &&
sudo rc-update del bluetooth &&
sudo rm -rf ~/config-master ~/nanorc.zip ~/config.zip ~/nanorc-master /usr/share/nano/rego.nanorc /usr/share/nano/zig.nanorc &&
sudo reboot