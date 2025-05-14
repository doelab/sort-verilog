#!/bin/bash

# Create output directories if they don't exist
mkdir -p output/median
mkdir -p output/sorters

# Process Median networks
echo "Processing Median networks..."
for json_file in Networks/Median/*.json; do
    if [ -f "$json_file" ]; then
        base_name=$(basename "$json_file" .json | tr '[:upper:]' '[:lower:]')
        echo "Processing $base_name..."
        python3 src/main.py \
            --file "$json_file" \
            --data-type unsigned \
            --width 32 \
            --output-file "output/median/${base_name}.sv"
    fi
done

# Process Sorter networks
echo "Processing Sorter networks..."
for json_file in Networks/Sorters/*.json; do
    if [ -f "$json_file" ]; then
        base_name=$(basename "$json_file" .json | tr '[:upper:]' '[:lower:]')
        echo "Processing $base_name..."
        python3 src/main.py \
            --file "$json_file" \
            --data-type unsigned \
            --width 32 \
            --output-file "output/sorters/${base_name}.sv"
    fi
done

echo "All files processed successfully!" 