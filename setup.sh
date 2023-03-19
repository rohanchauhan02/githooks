#!/bin/sh

cp .githook/pre-clone .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
