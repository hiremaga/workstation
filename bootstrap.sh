#!/usr/bin/env sh

# 1. XCode
read -p "Install XCode and press any key when you're done"

# 2. Command Line Tools
read -p "Now download & install Command Line Tools from XCode > Preferences > Downloads"

# 3. SSH Key, needed for Github
echo "Please enter your email: "
read email
ssh-keygen -t rsa -C "$email"
cat ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub | pbcopy

read -p "Your new SSH key has been copied to the clipboard, add it to Github and press any key to continue"

# 4. Temporary Clone
cd /tmp
git clone git@github.com:hiremaga/workstation.git
cd workstation

# 5. Install Soloist et al.
sudo gem install bundler
bundle install --binstubs

# 6. First Run
bin/soloist
