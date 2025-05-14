#!/bin/bash

# Create output directory if it doesn't exist
mkdir -p output_fullpp

# Process each JSON file in the json directory
for json_file in json/*.json; do
    # Get the base filename without extension and convert to lowercase
    base_name=$(basename "$json_file" .json | tr '[:upper:]' '[:lower:]')
    
    # Extract depth (D) from filename (last number after underscore)
    depth=$(echo "$base_name" | grep -o '[0-9]*$')
    
    # Calculate pipeline hex value (all 1's for the number of stages)
    pipeline_hex=$(printf "0x%x" $(( (1 << depth) - 1 )))
    
    # Generate SystemVerilog file with full pipeline
    python3 src/main.py \
        --file "$json_file" \
        --data-type unsigned \
        --width 32 \
        --pipeline "$pipeline_hex" \
        --output-file "output_fullpp/${base_name}_pp.sv"
    
    echo "Generated: output_fullpp/${base_name}_pp.sv (pipeline: $pipeline_hex)"
done 