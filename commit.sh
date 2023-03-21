#!/bin/bash

# Prompt the user to enter the type of change
read -p "Enter the type of change (new feature, bug fix, breaking change): " change_type

# Depending on the type of change, create the commit message
case $change_type in
  "new feature")
    commit_message="feat: "
    ;;
  "bug fix")
    commit_message="fix: "
    ;;
  "breaking change")
    commit_message="chore: "
    ;;
  *)
    echo "Invalid change type. Please enter 'new feature', 'bug fix', or 'breaking change'."
    exit 1
    ;;
esac

# Prompt the user to enter a short description of the change
read -p "Enter a short description of the change: " description

# Add the description to the commit message
commit_message="$commit_message$description"

# Create the commit with the commit message
git commit -m "$commit_message"
