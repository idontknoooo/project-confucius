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
