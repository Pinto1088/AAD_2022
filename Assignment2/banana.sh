# sshpass -f password ssh aad31@banana.ua.pt
sshpass -f password scp CodeSamples.zip aad31@banana.ua.pt:/home/aad/aad31
sshpass -f password scp cryptCuda.zip aad31@banana.ua.pt:/home/aad/aad31
sshpass -f password scp matrixMult.zip aad31@banana.ua.pt:/home/aad/aad31
sshpass -f password ssh aad31@banana.ua.pt unzip -uq cryptCuda.zip'
sshpass -f password scp runCryptCudaStride.sh aad31@banana.ua.pt:/home/aad/aad31/cryptCuda
sshpass -f password ssh aad31@banana.ua.pt 'cd /home/aad/aad31/cryptCuda ; ./runCryptCudaStride.sh'
sshpass -f password scp aad31@banana.ua.pt:/home/aad/aad31/cryptCuda/crypt.zip ./

sshpass -f password scp incrOrderCuda.zip aad31@banana.ua.pt:/home/aad/aad31
sshpass -f password ssh aad31@banana.ua.pt unzip -uq incrOrderCuda.zip
sshpass -f password ssh aad31@banana.ua.pt 'cd /home/aad/aad31/incrOrderRow ; ./incOrderRow.sh'
sshpass -f password scp incOrderColumn.sh aad31@banana.ua.pt:/home/aad/aad31/incrOrderCuda
incrOrderCuda.zip
zip -rq incrOrderCuda.zip R*.*
sshpass -f password scp aad31@banana.ua.pt:/home/aad/aad31/incrOrderCuda/incrOrderCuda.zip ./


#!/bin/bash
# set counter 'c' to 1 and condition 
# c is less than or equal to 5
for (( c=1; c<=5; c++ ))
do 
   echo "Run num. $c"
   ./cryptCuda >> Result_x1.txt
   wait
done