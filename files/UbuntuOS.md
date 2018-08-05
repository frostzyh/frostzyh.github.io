### Installation
* Prerequisite:
  * BIOS Settings:
    * UEFI mode only
    * disable secure boot
    * Disable Intel Rapid Start
  * USB Installation: UEFI Mode
  * Installation type & partition
    * Select "Something else"
    * Erase target disk (example `/dev/sda`)
    * 1st partition:
      * Size >= 650 MB
      * Type: Primary
      * Location: Beginning of this space
      * Use AS: EFI
    * 2nd partition:
      * Size >= 20+ GB
      * Type: Primary
      * Location: Beginning of this space
      * Use AS: ext4
      * Mount Point: `/`
    * 3rd partition:
      * Size ~> Memory size (ie. 40GB for 32GB memory)
      * Type: Primary
      * Location: Beginning of this space
      * Use AS: swap
    * 4th partition:
      * Size: remaining space on HDD
      * Type: Primary
      * Location: Beginning of this space
      * Use AS: ext4
      * Mount Point: `/home`
  * Select 1st partition as **boot loader device**.
  * [Reference](https://askubuntu.com/questions/726972/dual-boot-windows-10-and-linux-ubuntu-on-separate-hard-drives)

### change Terminal color
```bash
# Add '@\h' to show hostname
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u[\033[00m\]:\[\033[01;34m\]\w\[\033[33m\]$(git_branch)\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(git_branch)\$ '
fi
```

### Terminal
* Execution:
  * To execute `*.sh` file. Type `bash *.sh`
  * To execute binary file, type `./fileName`
  * to "execute" `*.deb` file, use `sudo dpkg -i *.deb` to decompress the file.
  Then use `sudo apt-get install fileName` to install.
  * To untar a `.tar.gz` or `.tgz` file, type `tar xvzf name.tar.gz`

* PATH:
  * To show PATH, type `echo $PATH`
  * PATH is located at `/etc/environment` and `/home/frostzyh/.profile`
  * To add location to PATH, `export PATH = /usr/a/b/bin${PATH:+:${PATH}}`



### Tasks:
1. Install Basic Packages
2. Setup git (git name, alias, SSH, GPG)
3. Terminal Color `~/.bashrc` (line 59-63)
4. GNOME Tweaks

### Packages:
```bash
sudo apt upgrade
sudo apt update
sudo apt install xclip curl git vim xpad

# to install node, install [nvm](https://github.com/creationix/nvm)
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install --lts

sudo npm install -g npm@latest

#Check version
node -v
npm -v
```

### Frequenly used apps:
* [Chrome](https://www.google.com/chrome/)
* [Atom](https://atom.io/)
* GNOME Tweaks(Ubuntu 18.4)
* (Optional) Synaptic Package Manager
