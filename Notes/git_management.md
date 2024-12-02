# git管理

我现在有一个项目想推送到github上，这个文件夹下一共有三个文件夹，我想推送其中的两个，想推送的两个文件夹中，我有一个文件夹是想全部推送，另一个文件夹是想推送其中一部分的内容，我在ubuntu系统下，想用git命令操作。

- SLAM-Code
  - Notes：每次全部推送
  - slambook2：每次推送其中的代码文件（不推送3rdparty）
  - slam_in_autonomous_driving：暂时不推送

初始化git

```bash
git init
```

推送Notes

```bash
git add Notes
```

创建`.gitignore`文件忽略

