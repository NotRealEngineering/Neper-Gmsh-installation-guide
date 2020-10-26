#Property of Not Real Engineering 
#Copyright 2020 Not Real Engineering - All Rights Reserved You may not use, 
#           distribute and modify this code without the written permission 
#           from Not Real Engineering.
############################################################################
##             NEPER Installation                                         ##
############################################################################

Get the Ubuntu app for windows 10
$ cd /mnt/c

#Install gcc   
$ sudo apt-get update
$ sudo apt install build-essential
$ sudo apt install gfortran

# install Openssl
---download and extract the sourcecode from---
	https://github.com/openssl/openssl
$ cd openssl-master
$ ./configure
$ sudo make
$ sudo make install

# install CMake
---download and extract the sourcecode from---
	https://cmake.org/download/
$ cd cmake-x.x.x (your version)
$ ./bootstrap
$ sudo make
$ sudo make install

#Install dependancies
$ sudo apt-get install libgmp3-dev
$ sudo apt-get install libhdf5-serial-dev
$ sudo apt-get install libfltk1.3-dev
$ sudo apt-get install xorg openbox
$ sudo apt-get install libpng-dev
$ sudo apt-get install povray
$ sudo apt-get install libblas-dev liblapack-dev

#Install freetype
---download and extract the sourcecode from---
	https://www.freetype.org/
$ cd freetype-x.x.x (your version)
$ ./configure
$ sudo make
$ sudo make install 

# Install Gmsh
---Download and extract Gmsh sourcecode from---
	https://gmsh.info/

$ cd gmsh-4.6.0-source
$ mkdir build
$ cd build
$ cmake ..
$ sudo make
$ sudo make install



#Install dependancies 
$ sudo apt-get install libgsl-dev
$ sudo apt-get install libnlopt-dev
$ sudo apt-get install libomp-dev
$ sudo apt-get install libscotch-dev
$ sudo apt-get install libpthread-stubs0-dev

#Install Neper
---Download and extract Neper source code from---
	https://neper.info/downloads.html

$ cd neper-4.0.2/src
$ mkdir build
$ cd build
$ cmake ..
$ sudo make
$ sudo make install

$ export OMP_NUM_THREADS=1

All Done! :)

#Test neper
$ neper -T -n 100 -id 1
$ neper -V n100-id1.tess -datacellcol id -print Image_1
$ neper -M n100-id1.tess -meshqualmin 1
$ neper -V n100-id1.tess,n100-id1.msh -dataelsetcol id -print Image_2

Disclaimer: THIS CAN CHANGE WITH CHANGE IN VERSIONS.