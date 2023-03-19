#!/bin/sh

cp .githook/pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit


touch .git/hooks/post-clone
chmod +x .git/hooks/post-clone


# Check if pre-commit is already installed
if ! command -v pre-commit &> /dev/null
then
    # Download the latest release of pre-commit from GitHub
    PRE_COMMIT_URL=$(curl -s https://api.github.com/repos/pre-commit/pre-commit/releases/latest | grep "browser_download_url.*pre-commit.*$(uname -s)-$(uname -m)" | cut -d : -f 2,3 | tr -d \")
    curl -L $PRE_COMMIT_URL > pre-commit

    # Install pre-commit using the appropriate package manager
    if command -v pip &> /dev/null
    then
        pip install pre-commit
    elif command -v brew &> /dev/null
    then
        brew install pre-commit
    else
        echo "Unable to install pre-commit. Please install it manually."
    fi

    # Clean up the downloaded pre-commit binary
    rm pre-commit
fi
