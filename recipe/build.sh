#!/bin/bash
export DISABLE_AUTOBREW=1
${R} CMD INSTALL --build . ${R_ARGS}

## expose bin
pushd ${PREFIX}/bin
ln -sf ../lib/R/library/littler/bin/r r
popd
