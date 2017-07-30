from ubuntu:trusty
run apt-get update
run apt-get install -y build-essential
run apt-get install -y gnome-core-devel
run apt-get install -y libmodbus-dev  libusb-1.0-0-dev 
run apt-get install -y tk-dev
run apt-get install -y tcl-dev
run apt-get install -y bwidget libtk-img tclx libreadline6-dev
run apt-get install -y python-tk
run apt-get install -y libboost-python-dev
run apt-get install -y libglu1-mesa-dev
run apt-get install -y libxmu-dev
copy ./linuxcnc /linuxcnc
workdir /linuxcnc
run cd /linuxcnc/src && sh autogen.sh
run cd /linuxcnc/src && ./configure --with-realtime=uspace --enable-non-distributable=yes 
run cd /linuxcnc/src && make
