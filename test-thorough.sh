#!/usr/bin/tcsh

grass79 --tmp-location XY --exec \
    g.extension g.download.location
grass79 --tmp-location XY --exec \
    g.download.location url=http://fatra.cnr.ncsu.edu/data/nc_spm_full_v2alpha.tar.gz dbase=$HOME

grass79 --tmp-location XY --exec \
    python3 -m grass.gunittest.main --grassdata $HOME --location nc_spm_full_v2alpha --location-type nc