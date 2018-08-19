## Centos
1. 备份原文件
2. 下载新的Centos-Base.repo 到 /etc/yum.repos.d/
3. 生成缓存

```
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak

# CentOS 7
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

yum makecache
```

## NPM

npm install -g cnpm -registry=https://registry.npm.taobao.org

## Visual Studio Code

```json
{
    "[ruby]":{
    "editor.tabSize": 2,
    "editor.detectIndentation": false,
    "editor.insertSpaces": true,
    "files.trimTrailingWhitespace": true
    },
    "files.eol": "\n",
    // "sublimeTextKeymap.promptV3Features": true,
    "editor.multiCursorModifier": "ctrlCmd",
    "editor.snippetSuggestions": "top",
    "editor.formatOnPaste": true,
    "window.zoomLevel": 0,
    "extensions.ignoreRecommendations": false,
    "git.ignoreMissingGitWarning": true,
    "editor.fontSize": 16
}
```
