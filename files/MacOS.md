## Mac FAQ


### Terminal:  
* Add PATH:     
	`sudo vi /etc/paths`

* Show hidden file:   
	`defaults write com.apple.finder AppleShowAllFiles YES`

* Clear screen:  
	`Command(⌘) + K`

* Change terminal color/ Name/HostName  
	In home directory `~`, edit or create a file .bash_profile `nano .bash_profile` and add the following three lines of codes
	```
	export PS1="\[\033[36m\]\u\[\033[m\]:\[\033[35m\]\w \[\033[m\]\$"
	export export CLICOLOR=1
	export LSCOLORS=ExFxBxDxCxegedabagacad
	alias ls='ls -GFh'
	```
	which give the format `username:directory $` and enables color for ls.
	Remember, in terminal, uncheck `preferences > Profiles > Use bold fonts`.
	
	To show in format of `username@hostname:cwd $`, replace PS1 to `PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "`

### General
* Switch between apps  
	`Command(⌘) + TAB`
* Switch between windows of same app  
	``Command(⌘) + ` ``


### Softwares need to install when building a Mac   
	* Java + IntelliJ IDEA / Eclipse
	* Python(Anaconda) + PyCharm + TensorFlow + CUDA
	* C++? CodeBlock?
	* Git + GitHub + BitBucket
	* TextEditor : Atom
