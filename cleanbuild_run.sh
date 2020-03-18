#!/bin/bash

BASEDIR=$(pwd)

mkdir build
cd build

if [ -d "Coverage" ]; then
  rm -rf Coverage
fi
rm sample.info
rm sample_filtered.info
rm gtestSample
rm ./unittest/gtestSample_test
find -name *.gcno -exec rm {} \;
find -name *.gcda -exec rm {} \;
cmake ..
make clean
make
./unittest/gtestSample_test

if [ "$1" == "c" ]; then
  lcov -c -i -d ./ -o sample_base.info
  lcov -c -d ./ -o sample_test.info
  lcov -a sample_base.info -a sample_test.info -o sample.info
  lcov -r sample.info '/usr/include/*' '/unittest/*' -o sample_filtered.info
  genhtml sample_filtered.info --output-directory=Coverage
fi
