# 打包安装程序

运行命令
```
G:\WorkDev\Tools\QtInstallerFramework\4.6\bin\binarycreator.exe -c config\config.xml -p packages DCRobotStudioInstaller

G:/WorkDev/Tools/QtInstallerFramework/4.6/bin/binarycreator.exe -c config/config.xml -p packages DCRobotStudioInstaller

```


# 修改exe详细信息

下载软件

https://angusj.com/resourcehacker/

```

1 VERSIONINFO
FILEVERSION 2023,1,0,2
PRODUCTVERSION 2023,1,0,4
FILEOS 0x4
FILETYPE 0x1
{
BLOCK "StringFileInfo"
{
        BLOCK "040904B0"
        {
                VALUE "CompanyName", "SHENZHENG DACANG ROBOT Co., Ltd."
                VALUE "FileDescription", "DCROBOT Studio 2023.1.1.1"
                VALUE "FileVersion", "2023.1.0.2"
                VALUE "LegalCopyright", "SHENZHENG DACANG ROBOT Co., Ltd. All Rights Reserved.  "
                VALUE "ProductName", "DCROBOT Studio"
                VALUE "ProductVersion", "2023.1.0.1"
        }
}

BLOCK "VarFileInfo"
{
        VALUE "Translation", 0x0409 0x04B0  
}
}

```
