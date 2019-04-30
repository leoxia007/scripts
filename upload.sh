#!/bin/bash
OUT=out/target/product/mha;
cp -f $OUT/mha.json api/mha.json;
rsync -avP -e ssh $(ls $OUT/RR-P*.zip) xlagjn@frs.sourceforge.net:/home/frs/project/xlagjn-rr/MHA/
while [ $? -ne 0 ]
do
rsync -avP -e ssh $(ls $OUT/RR-P*.zip) xlagjn@frs.sourceforge.net:/home/frs/project/xlagjn-rr/MHA/
done
touch gittemp.txt;
basename -s .zip $(ls $OUT/RR-P*.zip) > gittemp.txt;
cd api;
git add mha.json;
git commit -F ../gittemp.txt ;
git push;
cd ..;
rm -f gittemp.txt;
echo "ROM Upload Done!"
