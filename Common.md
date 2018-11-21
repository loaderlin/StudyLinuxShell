Centos 镜像源 

修改软件源为国内加速镜像
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

用户设置
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

快捷键设置
```json
// 将键绑定放入此文件中以覆盖默认值
[
    {
        // "key": "ctrl+shift+alt+up",
        "key": "shift+alt+up",
        "command": "cursorColumnSelectUp",
        "when": "editorTextFocus"
    },
    {
        // "key": "ctrl+shift+alt+down",
        "key": "shift+alt+down",
        "command": "cursorColumnSelectDown",
        "when": "editorTextFocus"
    },
    {
        // "key": "ctrl+r",
        "key": "ctrl+alt+o",
        "command": "workbench.action.openRecent"
    },
    {
        // "key": "ctrl+shift+o",
        "key": "ctrl+r",
        "command": "workbench.action.gotoSymbol"
    },
    {
        // "key": "shift+alt+down",
        "key": "ctrl+shift+d",
        "command": "editor.action.copyLinesDownAction",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        // "key": "shift+alt+up",
        "key": "ctrl+shift+alt+up",
        "command": "editor.action.copyLinesUpAction",
        "when": "editorTextFocus && !editorReadonly"
    }
]
```

## ShadowsocksR

部署Shadowsocks服务器时，注意配置防火墙开放端口访问

```sh
service iptables status
/sbin/iptables -I INPUT -p tcp --dport 1099 -j ACCEPT
service iptables save
```
Linux上防火墙的配置文件

```sh
vim /etc/sysconfig/iptables
```
