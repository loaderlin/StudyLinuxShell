用户可以利用Linux系统提供的
- chmod命令来重新设定不同的访问权限。
- chown命令来更改某个文件或目录的所有者。
- chgrp命令来更改某个文件或者目录的用户组

-R 处理指定目录以及其子目录下的所有文件
-v 运行时显示详细的处理信息

### chmod

```sh
-rw-r--r--
chmod a+x log || chmod 755 log

-rwxr-xr-x
chmod ug+w,o-x log || chmod 774 log

使用“=”设置权限
-rw-rw-r--
chmod u=x log || chmod 164 log  
---xrw-r-- 

对一个目录及其子目录所有文件添加权限
chmod -R u+x test

为所有用户分配读权限
chmod =r file
```

### chgrp 

```sh
改变文件的群组属性
chgrp -v tongchuang log

根据指定文件改变文件的群组属性
chgrp --reference=log log1
参考log的属性 修改log1

通过群组识别码改变文件群组属性
chgrp -R 100 test
通过群组识别码改变文件群组属性，100为users群组的识别码，具体群组和群组识别码可以去/etc/group文件中查看
```

### chown

chown将指定文件的拥有者改为指定的用户或组，用户可以是用户名或者用户ID；组可以是组名或者组ID；

```sh

修改拥有者和群组
chown mail:mail log || chown mail: log

只修改拥有群组
chown :mail log
```

## /etc/group 文件详解

系统管理员对用户和用户组管理时相关的文件
- /etc/group
- /etc/passwd
- /etc/shadow

用户组（Group）配置文件主要有
- /etc/group
- /etc/gshadow

*/etc/gshadow是/etc/group的加密信息文件*

用户组的所有信息都存放在/etc/group文件中。此文件的格式是由冒号(:)隔开若干个字段。

组名:口令:组标识号:组内用户列表

口令字段存放的是用户组加密后的口令字。一般Linux系统的用户组都没有口令，即这个字段一般为空，或者是*。