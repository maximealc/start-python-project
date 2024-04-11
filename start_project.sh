#!/bin/bash

# Check if a project name is provided
if [ -z "$1" ]; then
  echo "Please provide a project name."
  exit 1
fi

PROJECT_NAME=$1


# Step 1: Create a project directory and open it in VS Code
mkdir $PROJECT_NAME
cd $PROJECT_NAME
code .

# Step 2 & 3: Create a virtual environment and install libraries
python3 -m venv venv
source venv/bin/activate
pip install numpy pandas scikit-learn matplotlib seaborn

# Ask for repository visibility
echo "Public or private repository?"
read REPO_VISIBILITY

# Validate input
if [[ "$REPO_VISIBILITY" != "public" && "$REPO_VISIBILITY" != "private" ]]; then
    echo "Invalid input. Please type 'public' or 'private'. Exiting script."
    exit 1
fi

# Step 4: Initialize a git repo, add .gitignore, and connect to GitHub
git init
echo "venv/" > .gitignore
echo ".DS_Store" >> .gitignore
echo "__pycache__/" >> .gitignore
git add .
git commit -m "Initial commit"
gh repo create $PROJECT_NAME --$REPO_VISIBILITY --source=. --remote=origin

# Step 5: Push the initial setup to GitHub
git push -u origin master

echo "Project $PROJECT_NAME setup complete."
