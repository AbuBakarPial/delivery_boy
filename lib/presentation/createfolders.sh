
#!/bin/bash

# Folder names you want to create (replace with your desired names)
folders=("binding" "controller" "models")

# Loop through all subdirectories in the current directory
for dir in */; do
  # Create the specified folders within each subdirectory
  for folder in "${folders[@]}"; do
    mkdir -p "$dir/$folder"  # -p creates parent directories if needed
  done
done
