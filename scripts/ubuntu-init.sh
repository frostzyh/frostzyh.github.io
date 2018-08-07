#!/bin/bash
# Written by frostzyh on August 6, 2018 Evening
# Envrionment Ubuntu 18.04 Bionic

# Do this in terminal
# Gives everyone execute permission
#chmod a+x ~/my-script.sh

echo "Script written by frostzyh";
echo "Would you like to install all/some/none?[a/s/n]"
read STATUS

PACKAGES="xclip curl git vim xpad gzip npm"
install_ubuntu_apps()
{
  sudo apt upgrade
  sudo apt update
  sudo apt install $PACKAGES
  echo "packages installed: $PACKAGES"
  echo "Checking pre-selected packages version"
  git --version
}

ubuntu_configs()
{
  echo "Create copies of .bashrc and .profile"
  read DECISION
  if [ $DECISION = "y" ]; then
    cd ~
    if [ ! -d "$PWD/.myDefaults" ]; then
      mkdir .myDefaults
    fi
    cp ~/.bashrc ~/.myDefaults/
    cp ~/.profile ~/.myDefaults/
    cd ~/.myDefaults/
    if [ -f ".bashrc" ] && [ -f ".profile" ]; then
      echo "files are written succesfully!"
    else
      echo "Failed to copy files...."
    fi
  fi
  echo ""

  echo "Apply monitor configurations for Ubuntu 18.04?[y/n]"
  read DECISION
  if [ $DECISION = "y" ]; then
    sudo cp ~/.config/monitors.xml /var/lib/gdm3/.config/
  fi
  echo ""

  echo "config .bash_profile?[y/n]"
  read DECISION
  if [ $DECISION = "y" ]; then
    echo "Calling .profile and .bashrc on .bash_profile"
    cmd1="source ~/.profile"
    cmd2="source ~/.bashrc"
    echo "adding $cmd1"
    echo $cmd1 >> ~/.bash_profile
    echo "adding $cmd2"
    echo $cmd2 >> ~/.bash_profile
  fi
  echo ""

  echo "Adding pbcopy and pbpaste alias to .bashrc?[y/n]"
  read DECISION
  if [ $DECISION = "y" ]; then
    echo "Adding alias to .bash_rc"
    echo "" >> ~/.bashrc
    pb1="alias pbcopy='xclip -selection clipboard'"
    pb2="alias pbpaste='xclip -selection clipboard -o'"
    echo "adding $pb1"
    echo $pb1 >> ~/.bashrc
    echo "adding $pb2"
    echo $pb2 >> ~/.bashrc
    echo "Reboot is recommended to make change work properly. [y/n]"
    read DECISION
    if [ $DECISION = "y" ]; then
      sudo reboot
    fi
  fi
  echo ""
}

install_atom_pks()
{
  apm install atom-beautify atom-clock autocomplete-modules language-markdown color-picker emmet language-babel highlight-selected platformio-ide-terminal todo-show linter linter-ui-default linter-eslint linter-jshint linter-sass-lint intentions busy-signal
}

apply_git_config()
{
  git config --global user.name frostzyh
  git config --global user.email "immersedrift@gmail.com"
  git config --global alias.alias 'config --get-regexp alias'
  git config --global alias.co checkout
  git config --global alias.st status
  git config --global alias.br branch
  git config --global alias.ac '!git add -A && git commit -m'
  git config --global alias.hist "log --pretty=format:'%C(yellow)[%ad]%C(reset) %C(green)[%h]%C(reset) | %C(red)%s %C(bold red)%C(reset) %C(blue)%d%C(reset)' --graph --date=short"
  echo ".gitconfig is updated!"
}

generate_SHH_GPG()
{
  echo "Creating ssh key......"
  ssh-keygen -t rsa -b 4096 -C "immersedrift@gmail.com"
  echo "Add key to ssh-agent......"
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_rsa
  echo "add key to github......"
  sudo apt install xclip
  xclip -sel clip < ~/.ssh/id_rsa.pub
  echo "Paste your key on github then press [space] to continue......"
  read CONTINUE
  while [ $CONTINUE != " " ]; do
    echo "Paste your key on github then press [space] to continue......"
    read CONTINUE
  done

  echo "generting gpg key......"
  gpg --full-generate-key
  echo "Showing gpg key......"
  gpg --list-secret-keys --keyid-format LONG
  echo "please copy the key ID after rsa4096/ and paste......"
  read GPG_KEY
  gpg --armor --export $GPG_KEY | xclip -selection clipboard
}

if [ $STATUS = "a" ]; then
  install_ubuntu_apps
  ubuntu_configs
  install_atom_pks
  apply_git_config
elif [ $STATUS = "s" ]; then
  echo "Install default ubuntu packages for frostzyh?[y/n]"
  echo "Packages:" $PACKAGES
  read INSTALL_PKG
  if [ $INSTALL_PKG = "y" ]; then
    install_ubuntu_apps
  fi
  # ===============================================
  echo "Apply Ubuntu configs?[y/n]"
  read INSTALL_PKG
  if [ $INSTALL_PKG = "y" ]; then
    ubuntu_configs
  fi
  # ===============================================
  echo "Install atom packages?[y/n]"
  read INSTALL_PKG
  if [ $INSTALL_PKG = "y" ]; then
    install_atom_pks
  fi
  # ===============================================
  echo "Configure git for frostzyh?[y/n]"
  read INSTALL_PKG
  if [ $INSTALL_PKG = "y" ]; then
    apply_git_config
  fi
  # ===============================================
  echo "Generating SSH and GPG keys for github?[y/n]"
  read INSTALL_PKG
  if [ $INSTALL_PKG = "y" ]; then
    generate_SHH_GPG
  fi
else
  echo "Nothing is installed!"
fi
