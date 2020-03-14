yum update  -y
yum upgrade -y
yum install screen
yum install unzip

sudo yum install -y epel-release git make cmake gcc gcc-c++ libstdc++-static libuv-static hwloc-devel openssl-devel
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build
cd xmrig/build
cmake ..
make -j$(nproc)
yum autoremove -y
yum install speedtest-cli -y
cd xmrig/build
speedtest
lscpu
