# git

### Set token
```sh
CURL='curl -sL -H "Authorization: token $GIT_TOKEN" '
GIT_TOKEN="<token>"
BAK_DIR=$(date +"%Y-%m-%d"); 
```

### Clone all repos from a user
```sh
    for i in `curl -H "Authorization: token ${GIT_TOKEN}" https://api.github.com/user/repos?per_page=100 \
    |grep ssh_url\
    | cut -d ':' -f 2-3 \
    |tr -d '",'`; do echo $i; 
    done > repos; 
    while read line; do git clone $line; done < repos
```

### Print all gistss from a user
```sh
curl -sL https://api.github.com/gists
```

## Clone all gists
```sh
mkdir $BAK_DIR-gists;
cd $BAK_DIR-gists
$CURL|grep -oi "https.*raw.*"|cut -d'"' -f1|xargs -P5 wget
```

### Random git commit
```sh
git commit -m "$(w3m whatthecommit.com | head -n 1)"
```
### Print the list of your Git commits this month
```sh
git log --since='last month' --author="$(git config user.name)" --oneline
```
### Scan entire Git repo for dangerous Amazon Web Service IDs
```sh
git grep -Ew '[A-Z0-9]{20}'
```
### Scan entire Git repos for dangerous Amazon Web Service IDs 
```sh
git ls-tree --full-tree -r --name-only HEAD | xargs egrep -w '[A-Z0-9]{20}'
```
### List status of all GIT repos
```sh
find ~ -name ".git" 2> /dev/null | sed 's/\/.git/\//g' | awk '{print "-------------------------\n\033[1;32mGit Repo:\033[0m " $1; system("git --git-dir="$1".git --work-tree="$1" status")}'
```