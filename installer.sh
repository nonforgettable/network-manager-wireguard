if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
git clone https://github.com/nonforgettable/network-manager-wireguard
cd
cd network-manager-wireguard
./autogen.sh --without-libnm-glib--libdir=/usr/lib/x86_64-linux-gnu --libexecdir=/usr/lib/NetworkManager --localstatedir=/var
make
make install
