#!/bin/bash

# Create output directory if it doesn't exist
mkdir -p output

# Process each JSON file in the json directory
for json_file in json/*.json; do
    # Get the base filename without extension and convert to lowercase
    base_name=$(basename "$json_file" .json | tr '[:upper:]' '[:lower:]')
    
    # Generate SystemVerilog file
    python3 src/main.py \
        --file "$json_file" \
        --data-type unsigned \
        --width 32 \
        --output-file "output/${base_name}.sv"
    
    echo "Generated: output/${base_name}.sv"
done 