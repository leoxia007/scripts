#!/bin/bash
VAR=$1
OUT=out/target/product/$VAR;
rsync -avP -e "ssh -o 'ProxyCommand nc -X 5 -x 127.0.0.1:1080 %h %p'" $(ls $OUT/RR-P*.zip) xlagjn@frs.sourceforge.net:/home/frs/project/xlagjn-rr/$(echo $VAR| tr '[a-z]' '[A-Z]')/
while [ $? -ne 0 ]
do
rsync -avP -e "ssh -o 'ProxyCommand nc -X 5 -x 127.0.0.1:1080 %h %p'" $(ls $OUT/RR-P*.zip) xlagjn@frs.sourceforge.net:/home/frs/project/xlagjn-rr/$(echo $VAR| tr '[a-z]' '[A-Z]')/
done
cp -f $OUT/$VAR.json api/$VAR.json;
touch gittemp.txt;
basename -s .zip $(ls $OUT/RR-P*.zip) > gittemp.txt;
cd api;
git add $VAR.json;
git commit -F ../gittemp.txt ;
git push;
cd ..;
rm -f gittemp.txt;
echo "ROM Upload Done!"
