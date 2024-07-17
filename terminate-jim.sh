#! /bin/bash

for m in `cat active-miners-jim.txt`; do
  if [ ! -f ./terminations/$m.log ]; then
    (cd ~/glif/invariants/invariants;
    time ./invariants miner-liquidation $m --config mainnet-jim.env --archive=false --epoch 4095790) 2>&1 | tee ./tmp/jim.log
    sleep 1
    mv ./tmp/jim.log ./terminations/$m.log
  fi
done

