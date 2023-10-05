#!/bin/bash
export DISABLE_AUTOBREW=1
${R} CMD INSTALL --build . ${R_ARGS}

## expose bin
pushd ${PREFIX}/bin
if [[ $target_platform =~ .*osx.* ]]; then
  ln -sf ../lib/R/library/littler/bin/r lr
else
  ln -sf ../lib/R/library/littler/bin/r r
fi
popd
