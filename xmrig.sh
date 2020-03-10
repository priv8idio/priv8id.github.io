sudo apt update  -y
sudo apt upgrade -y
sudo apt install screen
sudo apt install unzip

sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build
cd xmrig/build
cmake ..
make -j$(nproc)
sudo apt autoremove
sudo apt install speedtest-cli -y
cd xmrig/build
speedtest
lscpu
