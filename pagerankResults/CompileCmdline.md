docker run -it --rm -v ${PWD}:${PWD} -w ${PWD} -u root gcr.io/gem5-test/gcn-gpu
cd gem5-resources/src/gpu/pannotia/pagerank
make clean
make gem5-fusion


time gem5/build/GCN3_X86/gem5.opt gem5/configs/example/apu_se.py -n3 --mem-size=8GB --benchmark-root=gem5-resources/src/gpu/pannotia/pagerank/bin -c pagerank.gem5 --options="coAuthorsDBLP.graph 1"