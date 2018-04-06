# Create first account 
ssh-keygen -t rsa -C "first-email"
# When asking file location, press "Enter" don't type anything

# Attach the new key
ssh-add ~/.ssh/id_rsa
# Copy output of following command and add to your github SSH-Key
cat ~/.ssh/id_rsa.pub

# Create second account
ssh-keygen -t rsa -C "another-account's email"
# When asking file locatio, type: 
id_rsa_personal                        # MARK-A!
# meaning this is your personal github, the first one is company let's just say

ssh-add ~/.ssh/id_rsa_personal
cat ~/.ssh/id_rsa_personal.pub

# Configure '~/.ssh/config'
vim ~/.ssh/config
Host github
	HostName github.com
	User git
	IdentityFile ~/.ssh/id_rsa

Host github-personal 			# MARK-B! 
	HostName github.com
	User git
	IdentityFile ~/.ssh/id_rsa_personal # Must be same as MARK-A
# ######## Good to GO ##########

# make some test on FIRST account
git clone git@github.com:username/some-repo.git
cd some-repo
touch test
git add test
git commit -m "test"
git config user.email "first-email"
git config user.name "your-username"
git remote add remote-name git@github.com:username/some-repo.git
git push remote-name master

# make some test on SECOND account
git clone git@github.com:usernameABC/some-repoABC.git
cd some-repoABC
touch test
git add test
git commit -m "test"
git config user.email "second-email"
git config user.name "your-second-username"
                              # Must be same as MARK-B
			  #git@MARK-B/some-repo.git
git remote add remote-name git@github-personal/some-repo.git  
git push remote-name master

# All DONE!!!!!!!!!!!!!!!!!
