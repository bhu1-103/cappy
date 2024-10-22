#!/bin/bash

INPUT_FILE="z_output/input_nodes_copy_deployment_000.csv"
INPUT_DIR="z_output"

if [[ -f "$INPUT_FILE" ]]; then
    echo "Processing $INPUT_FILE..."
    
    # Get the last line of the first file
    last_line=$(tail -n 1 "$INPUT_FILE")
    third_element=$(echo "$last_line" | cut -d';' -f3)

    if [[ "$third_element" == "F" ]]; then
        echo "Last line has F in the third element. Running 6.sh for all CSV files in the directory..."
        
        for csv_file in "$INPUT_DIR"/*.csv; do
            if [[ -f "$csv_file" ]]; then
                echo "Running 6.sh for $csv_file..."
                ./6.sh "$csv_file"
            else
                echo "No CSV files found in the directory."
            fi
        done
    else
        echo "Last line does not have F in the third element. No action taken."
    fi
else
    echo "File $INPUT_FILE not found."
fi
