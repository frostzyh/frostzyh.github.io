## Mac FAQ


### Terminal:  
* Add PATH:     
	`sudo vi /etc/paths`

* Sow hidden file:   
	`defaults write com.apple.finder AppleShowAllFiles YES`

* Clear screen:  
	`Command(⌘) + K`

* Change terminal color   
	In .bash_profile , add `export PS1="\[\033[36m\]\u\[\033[m\]:\[\033[35m\]\w \[\033[m\]\$"`

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
