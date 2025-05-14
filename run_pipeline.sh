#!/bin/bash

# Create output directories if they don't exist
mkdir -p output_fullpp/median
mkdir -p output_fullpp/sorters

# Process Median networks
echo "Processing Median networks..."
for json_file in Networks/Median/*.json; do
    if [ -f "$json_file" ]; then
        base_name=$(basename "$json_file" .json | tr '[:upper:]' '[:lower:]')
        # Extract depth (D) from filename (last number after underscore)
        depth=$(echo "$base_name" | grep -o '[0-9]*$')
        # Calculate pipeline hex value (2^D - 1)
        pipeline_hex=$(printf "0x%x" $(( (1 << depth) - 1 )))
        
        echo "Processing $base_name (depth: $depth, pipeline: $pipeline_hex)..."
        python3 src/main.py \
            --file "$json_file" \
            --data-type unsigned \
            --width 32 \
            --pipeline "$pipeline_hex" \
            --output-file "output_fullpp/median/${base_name}_pp.sv"
    fi
done

# Process Sorter networks
echo "Processing Sorter networks..."
for json_file in Networks/Sorters/*.json; do
    if [ -f "$json_file" ]; then
        base_name=$(basename "$json_file" .json | tr '[:upper:]' '[:lower:]')
        # Extract depth (D) from filename (last number after underscore)
        depth=$(echo "$base_name" | grep -o '[0-9]*$')
        # Calculate pipeline hex value (2^D - 1)
        pipeline_hex=$(printf "0x%x" $(( (1 << depth) - 1 )))
        
        echo "Processing $base_name (depth: $depth, pipeline: $pipeline_hex)..."
        python3 src/main.py \
            --file "$json_file" \
            --data-type unsigned \
            --width 32 \
            --pipeline "$pipeline_hex" \
            --output-file "output_fullpp/sorters/${base_name}_pp.sv"
    fi
done

echo "All files processed successfully!" 