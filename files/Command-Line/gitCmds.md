#### git config file
Edit `.gitconfig` file
```
[user]
	name = "frostzyh"
	email = immersedrift@gmail.com
	signingkey = 94091DB7E9CCAEA3
[alias]
	alias = config --get-regexp alias
	co = checkout
	st = status
	br = branch
	ac = !git add -A && git commit -m
	hist = log --pretty=format:'%C(yellow)[%ad]%C(reset) %C(green)[%h]%C(reset) | %C(red)%s %C(bold red)%C(reset) %C(blue)%d%C(reset)' --graph --date=short
  prb = pull --rebase
  rlog = reflog
  cma = commit --amend
  rbi = rebase -i
[commit]
	gpgsign = true
```


#### sync fork branch to main
```
git fetch <origin> <branch>
git pull <origin> <branch>
git push
```
#### Create New Branch, Change & push to repo
```
git checkout -b <branch>
git add --all
git commit -m "message"
git push --set-upstream <origin> <branch>
```
#### Delete Local Branch
```
git branch [-d|-D] <branch>
```
#### Delete Remote Branch
```
git push <origin> --delete <branch>
```
#### Reset Local Branch to Remote
```
git fetch <origin>
git reset --hard <origin>/<branch>
```
#### Fix commits
```
git checkout <branch>
git rebase
{
  git add --all
  git commit
}
git rebase -i HEAD~2
  {f for fixup. }
git push <origin> HEAD --force
```
#### RC-PR
```
git fetch integration rc
git pull integration rc
git cherry-pick <SHA>   <Oldest commit>
  ***
git cherry-pick <SHA>   <Newest commit>
git log         <Check for errors>
git push yehui rc
<Create Pull Request>
```
