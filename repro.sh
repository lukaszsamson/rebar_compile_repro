#!/bin/bash
for VARIABLE in 1 .. 20
do
	mix deps.clean erlzmq
	mix deps.get
	mix deps.compile
done
