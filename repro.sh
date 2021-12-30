#!/bin/bash
for VARIABLE in 1 2 3 4 5
do
	mix deps.clean erlzmq
	mix deps.get
	mix deps.compile
done
