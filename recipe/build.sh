#!/bin/bash
export DISABLE_AUTOBREW=1
${R} CMD INSTALL --build . ${R_ARGS}

## expose bin
pushd ${PREFIX}/bin
ln -s ../library/R/littler/bin/r r
popd
