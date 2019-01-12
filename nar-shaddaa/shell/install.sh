sudo apt-get update

# Install updates
sudo apt-get -y upgrade
sudo apt-get autoremove

# Install  curl
sudo apt-get -y install curl

# Install Terminator
sudo apt-get -y install terminator

# Install Gnome Tweaks
sudo apt-get -y install gnome-tweaks

# Install Brave Browser
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ `lsb_release -sc` main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-`lsb_release -sc`.list
sudo apt-get update
sudo apt-get -y install brave-browser brave-keyring

# Uninstall Firefox
sudo apt-get -y remove firefox