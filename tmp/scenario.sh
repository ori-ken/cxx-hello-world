#/bin/bash

file="./test.txt";

./cmd-A.py ${file};
sha1sum -t ${file} > ${file}_new.sha1sum;
echo "[INFO] cmd-A.py output ${file}. sha1sum=$(cat ${file}_new.sha1sum)";

./cmd-B.py ${file};
sha1sum -t ${file} > ${file}_up.sha1sum;
echo "[INFO] cmd-B.py convert ${file}. sha1sum=$(cat ${file}_up.sha1sum)";

for i in `seq 1 ${1}`
do
   echo "[INFO] n=${i} start";
   ./cmd-A.py ${file};
   txt=$(cat ${file});
   echo "[INFO] new file output(${txt})";
   sha1sum -c ./${file}_new.sha1sum > /dev/null;
   if [ $? -ne 0 ]; then
      echo "[Error]sha1sum NG(new file)";
      exit 1;
   fi
   echo "[INFO] new file's sha1sum OK";
 
   ./cmd-B.py ${file};
   txt=$(cat ${file});
   echo "[INFO] up file output(${txt})";
   sha1sum -c ./${file}_up.sha1sum > /dev/null;
   if [ $? -ne 0 ]; then
      echo "[Error]sha1sum NG(up file)";
      exit 1;
   fi
   echo "[INFO] up file's sha1sum OK";
   echo "[INFO] n=${i} end";
done 
