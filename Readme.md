Run :
cp .githooks/pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit

touch .git/hooks/pre-commit
cp .githook/pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit

chmod +x commit.sh

./commit.sh
add
# Run the ./commit.sh script before creating a commit
sh ./commit.sh

chmod +x .git/hooks/pre-commit

cp .githooks/post-commit .git/hooks/post-commit
chmod +x .git/hooks/post-commit
