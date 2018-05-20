# force push
git push -f origin master
# force pull
git fetch --all
git reset --hard origin/master
# difference between origin/master and master
# origin/master is remote "Github"
# master is my local "directory" branch

# Pull request on github is basically a merge from other-branch to master
# generate a "Github Pull Request"
git push origin branch-name
# Approve Pull request
git checkout master
git merge branch-name
# Delete merged branch
git branch -D branch-name

git pull # pull from remote 
git pull --rebase # pull from remote and make local append to remote HEAD


# Private branch
# You can make a branch locally and make dev
# To hide your branch, you will need to always 'commit' your lastest version before your switch branch, but never 'push' your branch. Otherwise you will publish your branch.


# To work without conflict: Work with different folder

# How to hide your local branch (branch availble only for local user)
# The main idea is: Do NOT push branch!
git branch localdev # Create a new branch that will only availble for local user
# Add new file and more operation
touch newfile
git add . # Add branch
git commit -m "commit message" # Commit change
git checkout master 
# Other people will only see there is 1 master branch, no one except this machine can view "localdev" branch
