#!/bin/bash

# Loop for 100 iterations
for i in {1..100}
do
    # Create a text file
    filename="file_$i.txt"
    echo "This is file number $i" > $filename
    
    # Stage the file, commit, and push to the main branch
    git add .
    git commit -m "Added $filename"
    git push origin main
    
    # Remove the text file
    rm $filename
    
    # Stage the removal, commit, and push again
    git add .
    git commit -m "Removed $filename"
    git push origin main
    
    # Optional: Add a small delay to avoid overwhelming the server
    sleep 5
    
done

