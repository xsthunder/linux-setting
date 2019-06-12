set -e
# get current branch name @see https://stackoverflow.com/questions/6245570/how-to-get-the-current-branch-name-in-git
current_branch_name=$(git branch | grep \* | cut -d ' ' -f2)
if git branch -r | grep $current_branch_name > /dev/null
then
    echo branch $current_branch_name exists on remote
    exit 1
else
    git push -u origin "$current_branch_name"
fi
