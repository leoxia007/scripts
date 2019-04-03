#!/bin/bash
cp -f out/target/product/mha/mha.json api/mha.json;
rsync -avP -e ssh $(ls out/target/product/mha/RR-P*.zip) xlagjn@frs.sourceforge.net:/home/frs/project/xlagjn-rr/MHA/
