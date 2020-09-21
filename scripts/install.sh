#!/bash/bin

# Update Ubuntu and get standard repository programs
sudo apt update && sudo apt full-upgrade -y

# install drivers
# Just use the recommended ones. Can change later if needed
ubuntu-drivers autoinstall

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# basics
install caffeine
install caffeine-indicator
install cmake 
install curl 
install deja-dup
install exfat-fuse 
install git
install gcc 
install gparted 
install gnome-tweak-tool 
install gnome-shell-extensions 
install libreoffice
install snap 
install ubuntu-restricted-extras
install usb-creator-gtk
install vlc 


# -- List of optional apps from the canonical archives -- #
LIST_OPTIONAL="arduino arduino-mk handbrake inkscape openscad shotwell synaptic tlp tlp-rdw vncviewer"
# apt install -y $LIST_OPTIONAL


# Run all scripts in programs/
for f in programs/*.sh; do bash "$f" -H; done

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove -y

