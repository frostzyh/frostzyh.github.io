### Installation  
* Preparation: Use newest version of Ubuntu (16.04.03)
* When booting from USB, add command `nomodeset` immediately after `quiet splash` in the boot options.
This would avoid black screen problem when a Nvidia Graphic Card is used on the PC.
* After installation, press <kbd>shift<\kbd> + `Alt` + `F1`


### Post-installation
* Delete Confirmation: `Files => Edit => Preferences => Behavior => Trash`




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
