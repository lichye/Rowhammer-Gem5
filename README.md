# Rochammer-Gem5

replace the src code in Gem5 with provide file

dram_interface.hh
dram_interface.cc

Gem5/src/mem 


# Inter Docker in such directory
/work_file
    /Gem5
    /Gem5-resource
    /bin

# enter docker of suqre
docker run -it -u root --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1


# compile APU
cd gem5

scons build/GCN3_X86/gem5.opt -j8

# compile m5 assembly
cd gem5/util/m5
scons x86.CROSS_COMPILE=x86_64-linux-gnu- build/x86/out/m5

# run squre
gem5/build/GCN3_X86/gem5.opt gem5/configs/example/apu_se.py -n 3 -c bin/square



# inter pannotia's docker

docker run -it --rm -v ${PWD}:${PWD} -w ${PWD} -u root gcr.io/gem5-test/gcn-gpu 

# build bc originally

cd src/gpu/pannotia/bc
make gem5-fusion


# download the test case

# run APU on bc on small case with 8gb memory
gem5/build/GCN3_X86/gem5.opt gem5/configs/example/apu_se.py -n3 --mem-size=8GB --benchmark-root=gem5-resources/src/gpu/pannotia/bc/bin -c bc.gem5 --options="1k_128k.gr"

# run APU on bc on small case with 4gb memory
gem5/build/GCN3_X86/gem5.opt gem5/configs/example/apu_se.py -n3 --mem-size=4GB --benchmark-root=gem5-resources/src/gpu/pannotia/bc/bin -c bc.gem5 --options="1k_128k.gr"

# run APU on bc on large case

gem5/build/GCN3_X86/gem5.opt gem5/configs/example/apu_se.py -n3 --mem-size=8GB --benchmark-root=gem5-resources/src/gpu/pannotia/bc/bin -c bc.gem5 --options="2k_1M.gr"
