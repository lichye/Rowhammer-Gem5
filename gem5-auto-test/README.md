# Rochammer-Gem5 Auto-test scipt

# Set variables as your system setting Below is the example
GEM5_DIR="./gem5"
GEM5_BINARY="$GEM5_DIR/build/gem5.opt"
GEM5_CONFIG="$GEM5_DIR/configs/example/apu_se.py"
PANNOTIA_DIR="/gem5-resources/src/gpu/pannotia"
OPTIONS="1k_128k.gr"
RESULT_DIR="./result"
folder_path="./gem5-resources/src/gpu/pannotia"

#Assume all the Benchmark has been compile if not, please compile as below:
#example for compile FW:

cd src/gpu/pannotia/fw
docker run --rm -v ${PWD}:${PWD} -w ${PWD} -u $UID:$GID gcr.io/gem5-test/gcn-gpu make gem5-fusion

You need to compile all the benchmark in folder_path

#start DOCKER and run test
1. cd workspace
2.  docker run -it --rm -v ${PWD}:${PWD} -w ${PWD} -u root gcr.io/gem5-test/gcn-gpu
3. ./test.sh

#My workspace strucuture -Zhijie
--gem5
----gem5
------build
--------gem5.opt
------configs
--------example
----------apu_se.py
----gem5-resources
------src
--------gpu
---=------pannotia
----test.sh
----1k_128k.gr
----result
