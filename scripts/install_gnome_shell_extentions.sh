#!/bash/bin

rm -f ./install-gnome-extensions.sh
wget -N -q "https://raw.githubusercontent.com/cyfrost/install-gnome-extensions/master/install-gnome-extensions.sh" -O ./install-gnome-extensions.sh && chmod +x install-gnome-extensions.sh && ./install-gnome-extensions.sh

./install-gnome-extensions.sh --enable --file gnome_extentions_links.txt
