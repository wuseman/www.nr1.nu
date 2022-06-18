# git

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