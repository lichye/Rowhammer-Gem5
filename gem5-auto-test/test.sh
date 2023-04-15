#!/bin/bash

# Set variables
GEM5_DIR="./gem5"
GEM5_BINARY="$GEM5_DIR/build/gem5.opt"
GEM5_CONFIG="$GEM5_DIR/configs/example/apu_se.py"
PANNOTIA_DIR="/gem5-resources/src/gpu/pannotia"
OPTIONS="1k_128k.gr"
RESULT_DIR="./result"
folder_path="./gem5-resources/src/gpu/pannotia"

for file in "$folder_path"/*; do
    for bin_file in $file/*; do
        if [ -d "$bin_file" ]; then
            for gem_file in $bin_file/*.gem5; do
                echo $gem_file
                 # Get the benchmark name
                BENCHMARK_NAME=$(basename "$gem_file")

                # Print the command used for running the test
                echo "Running test with command:"
                echo "$GEM5_BINARY $GEM5_CONFIG -n3 --mem-size=40GB --benchmark-root=\"$file/bin\" -c \"$gem_file\" --options=\"$OPTIONS\""

                # Run the test with the specified parameters
                $GEM5_BINARY $GEM5_CONFIG -n3 --mem-size=40GB --benchmark-root="$bin_file" -c $BENCHMARK_NAME --options="$OPTIONS"

                # Copy and rename the result file
                cp m5out/stats.txt "$RESULT_DIR/${BENCHMARK_NAME}_stats.txt"
            done
        fi
    done
done

