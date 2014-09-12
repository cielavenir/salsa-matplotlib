autoreconf -i
./configure --enable-PYTHON --prefix=$PREFIX
make -j 4
make install
