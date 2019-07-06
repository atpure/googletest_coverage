#!/bin/bash
if [ -d "Coverage" ]; then
  rm -rf Coverage
fi
rm sample.info
rm sample_filtered.info
rm gtestSample
rm ./unittest/gtestSample_test
find -name *.gcno -exec rm {} \;
find -name *.gcda -exec rm {} \;
make clean
make
./unittest/gtestSample_test

if [ "$1" == "c" ]; then
  lcov -c -d ./ -b ./ -o sample.info
  lcov -r sample.info '/usr/include/*' '/unittest/*' -o sample_filtered.info
  genhtml sample_filtered.info --output-directory=Coverage
fi
