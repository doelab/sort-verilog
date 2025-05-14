#!/bin/bash

# Create output directories if they don't exist
mkdir -p output/median
mkdir -p output/sorters
mkdir -p output/sorters_low_avg_swaps
mkdir -p output/sorters_low_max_swaps

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

# Process Low Average Swaps networks
echo "Processing Low Average Swaps networks..."
for json_file in Networks/Sorters_Low_Avg_Swaps/*.json; do
    if [ -f "$json_file" ]; then
        base_name=$(basename "$json_file" .json | tr '[:upper:]' '[:lower:]')
        echo "Processing $base_name..."
        python3 src/main.py \
            --file "$json_file" \
            --data-type unsigned \
            --width 32 \
            --output-file "output/sorters_low_avg_swaps/${base_name}.sv"
    fi
done

# Process Low Max Swaps networks
echo "Processing Low Max Swaps networks..."
for json_file in Networks/Sorters_Low_Max_Swaps/*.json; do
    if [ -f "$json_file" ]; then
        base_name=$(basename "$json_file" .json | tr '[:upper:]' '[:lower:]')
        echo "Processing $base_name..."
        python3 src/main.py \
            --file "$json_file" \
            --data-type unsigned \
            --width 32 \
            --output-file "output/sorters_low_max_swaps/${base_name}.sv"
    fi
done

echo "All files processed successfully!" 