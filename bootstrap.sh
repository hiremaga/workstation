#!/usr/bin/env sh

## 1. XCode
read -p "Install XCode and press any key when you're done"

## 2. Command Line Tools
read -p "Now download & install Command Line Tools from XCode > Preferences > Downloads"

## 3. Temporary Clone
cd /tmp
git clone git://github.com/hiremaga/workstation.git
cd workstation

## 4. Install Soloist et al.
sudo gem install bundler
bundle install --binstubs

## 5. First Run
bin/soloist
