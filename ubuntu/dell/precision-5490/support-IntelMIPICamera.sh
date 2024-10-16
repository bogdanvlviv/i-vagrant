# https://wiki.ubuntu.com/IntelMIPICamera

sudo apt update

sudo apt install -y linux-modules-ipu6-generic

sudo add-apt-repository -y ppa:oem-solutions-group/intel-ipu6

sudo apt update

sudo apt install -y libcamhal0
