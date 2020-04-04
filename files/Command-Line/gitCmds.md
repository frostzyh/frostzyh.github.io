# Git commands

## git config file

Edit `.gitconfig` file

```bash
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

## sync fork branch to main

```bash
git fetch <origin> <branch>
git pull <origin> <branch>
git push
```

## Create New Branch, Change & push to repo

```bash
git checkout -b <branch>
git add --all
git commit -m "message"
git push --set-upstream <origin> <branch>
```
## [Stash](https://www.atlassian.com/git/tutorials/saving-changes/git-stash)
```bash
git stash
git stash pop # Reapply and remove from stash
git stach apply # Re-apply but keep changes on stash
```

## Change History
```bash
# Squash commits
git rebase -i HEAD~N  # Here N is the number of commits to combine
# Then pick the first(oldest) commit and squash all others and save.
```

## Branch Management

```bash
# Delelte local
git branch -d featureBranch
git branch -D featureBranch  # force delete

# Delete remote branch
git push origin --delete featureBranch
```

## Reset Local Branch to Remote

```bash
git fetch <origin>
git reset --hard <origin>/<branch>
```

## Fix commits

```bash
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

## RC-PR

```bash
git fetch integration rc
git pull integration rc
git cherry-pick <SHA>   <Oldest commit>
  ***
git cherry-pick <SHA>   <Newest commit>
git log         <Check for errors>
git push yehui rc
<Create Pull Request>
```

## Remove sensitive files

```bash
git filter-branch --index-filter "git rm -rf --cached --ignore-unmatch path_to_file" HEAD
```

To reset the action  
`git reset --hard refs/original/refs/heads/master`
