#!/bin/bash
# read the name of the user and print hello

echo "Hello! What is your name"
read name
echo "Welcome, $name"

# single quotes prevent the expansion of the variable
echo 'Your name was stored in $name'

# exercise: write a script that asks the user for a 
# filename and create an empty file named after it
#!/bin/bash

# Ask the user for a filename
read -p "Enter a filename: " filename

# If no filename is given, create a default one with a timestamp
if [[ -z "$filename" ]]; then
    filename="newfile_$(date +%Y%m%d_%H%M%S).txt"
    echo "No filename provided. Using default: $filename"
fi

# Create an empty file with the given name
touch "$filename"

# Confirm creation
echo "File '$filename' has been created successfully!"
