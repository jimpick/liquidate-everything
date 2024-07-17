#! /bin/bash

cat miner.txt | grep ^Miner | sed 's, - .*,,' | sed 's,Miner: ,,' > active-miners.txt

