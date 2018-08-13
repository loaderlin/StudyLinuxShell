Centos
1. 备份原文件
2. 下载新的Centos-Base.repo 到 /etc/yum.repos.d/
3. 生成缓存

```
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak

#CentOS 7
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

yum makecache
```

