## Mac FAQ


### Terminal:  
* Add PATH:     
	`sudo vi /etc/paths`

* Sow hidden file:   
	`defaults write com.apple.finder AppleShowAllFiles YES;killall Finder`

* Clear screen:  
	`Command(⌘) + K`

* Change terminal color   
	In .bash_profile , add
	```
	git_branch() {
		git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
	}
	export PS1="\[\033[36m\]\u\[\033[m\]:\[\033[35m\]\w\[\033[33m\]\$(git_branch)\[\033[m\]\$"
	export export CLICOLOR=1
	export LSCOLORS=ExFxBxDxCxegedabagacad
	alias ls='ls -GFh'
	```
	To create bash profile. type 'nano .bash_profile'
	Use Homebrew profile with "Use bold fonts" off

### Softwares need to install when building a Mac   
	* Java + IntelliJ IDEA / Eclipse
	* Python(Anaconda) + PyCharm + TensorFlow + CUDA
	* C++? CodeBlock?
	* Git + GitHub + BitBucket
	* TextEditor : Atom
	* Programming
		- MySQL WorkBench
		- Python: Anaconda/TensorFlow/PyCharm
		- Java: JAVA JDK, IntelliJ IDEA
		- C++?
		- Git + Github + BitBucket
		- Atom
		- OCaml + rlWrap (Homebrew)
		- Latex: MacTex
	* Other
		- VLC Player
		- MS Office 2016
		- QNAP Sync


### Command-line tools
	- Homebrew
	`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
	- oh-my-zsh
	`https://github.com/robbyrussell/oh-my-zsh`
