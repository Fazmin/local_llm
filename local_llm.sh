#!/bin/bash

# Place this script in your .bash_profile or .bashrcfile
# Example usage: local_llm "Name three scientists who have made significant contributions to the field of chemistry." mistral 0.5

# model directory
MODEL_DIR="/<llama_file_directory>"

# Function to run the language model
local_llm() {
    local prompt=$1
    local model_alias=${2:-mistral}
    local temp=${3:-0.5}
    local model_name

    # Switch to select the correct model file based on the alias
    case "$model_alias" in
        mistral)
            model_name="mistral-7b-instruct-v0.1-Q4_K_M-main.llamafile"
            ;;
        # Add other model aliases
        *)
            echo "Unknown model alias: $model_alias"
            return 1
            ;;
    esac

    # Run the model command
    $MODEL_DIR/$model_name --prompt "$prompt" --temp $temp --log-disable
}

