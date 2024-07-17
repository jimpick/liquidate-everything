#! /bin/bash

~/glif/invariants/go-pools
go test -v -timeout 6h ./terminate/... 2>&1 | tee ~/tmp/miner.txt
