# Git Cheat Sheet

## Configuration

```
# Configure your name and email
git config --global user.name "Your Name"
git config --global user.email "your@email.com"

# Configure the default text editor
git config --global core.editor "editor-name"

# Check your Git configuration
git config --list
```

## Creating Repositories

```
# Initialize a new Git repository
git init

# Clone an existing repository
git clone <repository_url>
```
## Basic Commands
```
# Check the status of your working directory
git status

# Add changes to the staging area
git add <file>
git add .                # Add all changes

# Commit changes
git commit -m "Your commit message"

# Push changes to a remote repository
git push <remote> <branch>

# Pull changes from a remote repository
git pull <remote> <branch>
```
## Branches
```
# List all branches in the repository
git branch

# Create a new branch
git branch <branch-name>

# Switch to a different branch
git checkout <branch-name>

# Create a new branch and switch to it
git checkout -b <new-branch-name>

# Merge changes from one branch into another
git merge <source-branch>       # Merge into current branch

# Delete a branch
git branch -d <branch-name>
```
# Remotes
```
# List remote repositories
git remote -v

# Add a new remote repository
git remote add <remote-name> <repository_url>

# Remove a remote repository
git remote remove <remote-name>
```
## Undoing Changes
```
# Discard changes in the working directory
git checkout -- <file>

# Unstage changes but keep them in the working directory
git reset <file>

# Amend the last commit with new changes
git commit --amend
```
## History and Logs
```
# Show the commit history
git log

# Show the commit history with a summary
git log --oneline

# Show the changes in a specific commit
git show <commit-hash>
```
## Tags
```
# Create a new tag
git tag <tag-name>

# List all tags
git tag

# Push tags to a remote repository
git push --tags
```
## .gitignore
```
# Ignore a specific file
file.txt
directory/
```
## Advanced Commands
```
# Rebase changes in the current branch
git rebase <base-branch>

# Stash changes for later use
git stash

# Apply stashed changes
git stash apply

# Show a list of stashed changes
git stash list

# Cherry-pick a specific commit
git cherry-pick <commit-hash>