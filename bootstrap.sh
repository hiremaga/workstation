#!/usr/bin/env sh
# Ripped off @timocratic's bootrstrap script: https://gist.github.com/1261054, thanks Tim!

#bash <(curl -s https://raw.github.com/hiremaga/workstation/master/bootstrap.sh)
#if you use `curl xxx | sh` input will be messed up and there will be no pauses

#I keep XCode and gcc on a thumbdrive along with java, for speeding things up
#http://support.apple.com/downloads/DL1421/en_US/JavaForMacOSX10.7.dmg
read -p "Install XCode or gcc (http://github.com/kennethreitz/osx-gcc-installer)"

#setup your ssh keys for github
echo "Please enter your email: "
read email
ssh-keygen -t rsa -C "$email"
cat ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub | pbcopy
read -p "\n\nYour ssh public key has been copied to your clipboard. Add it to github and press any key to continue"

#install homebrew to get latest git.  This way it still works if you did gcc, not just XCode
/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
brew install git

cd /tmp
git clone git@github.com:hiremaga/workstation.git
cd workstation

git submodule update --init
sudo gem install bundler
bundle install --binstubs

bin/soloist

bash .rvmrc
gem install bundler
bundle
