dell-7460-7560-hackintosh
===

戴尔燃7000黑苹果安装和日常使用EFI

>其他机型的小伙伴可以到我的黑苹果合集里找找，可能会有合适你的 EFI
>https://zhih.me/hackintosh/

## 说明

此合集适用于戴尔燃 7000 系列第一第二代型号为 7460/7560/7472/7572 的笔记本电脑，不同 MacOS 版本已分开

SSDT hotpatch来自[RehabMan](https://github.com/RehabMan/OS-X-Clover-Laptop-Config) 

文件列表：

1. EFI (可直接用于安装、升级和日常使用)
2. [HIDPI已转移到单独的仓库](https://github.com/xzhih/one-key-hidpi) 
3. 网卡驱动 (EFI 内已存在，不需要的可以删除)
4. 黑果小兵的ALCPlugFix (详细说明[来源传送门](https://github.com/daliansky/ALCPlugFix/blob/master/README.md))
5. 耳麦插件 [ComboJack](https://github.com/hackintosh-stuff/ComboJack) (与ALCPlugFix二选一，需要把目录下的 VerbStub.kext 放到 /clover/kexts/other 目录里) 

## 使用方法

1. EFI

安装时（不保证能顺利安装）：使用transmac写入镜像至U盘后，拷贝EFI到U盘ESP分区中，重启按F12选择U盘启动即可开始安装

具体安装教程请看[我的教程](https://zhih.me/hackintosh-install-guide/)

日常使用：安装好系统后，使用 `clover configurator` 挂载MacOS所在硬盘的ESP分区，把EFI拷贝进去，重启按F2进入BIOS设置此引导为首选，保存重启即可

2. 声卡、耳机

声卡驱动都已经有了，只需要进入 `黑果小兵的ALCPlugFix` 这个文件夹，双击 `install...` 运行即可，可以解决唤醒无声、耳机无声、耳机杂音等问题

3. 一键开启HIDPI并注入EDID

此一键命令可开启接近原生的HIDPI设置，不需要RDM软件即可在系统显示器设置中设置

[一键开启HIDPI](https://zhih.me/one-key-hidpi/)

效果：

![设置.png](https://i.loli.net/2017/10/26/59f199e85deb7.png)

4. 网卡驱动

机器自带的无线网卡无法驱动，只能购买可驱动的网卡更换，推荐购买 `dw1560/dw1830` 这两款网卡，需要注意的是燃系列有个超燃版也就是没有独显的版本，它因为主板结构不同不能安装dw1830，另外dw1830是3天线网卡，在购买时可向商家索要一根 `7~15cm` 的天线，安装时将第三根天线放置在HDD下的开槽处防止金属屏蔽信号

## 其他说明

触摸板已支持原生手势，自行在系统偏好设置->触控板里打开

macOS10.14 中会存在模糊过渡不自然的问题，只需要把 clover 里的 `config-Spoof.plist` 重命名为 `config.plist` 即可解决，原来的`config.plist` 换个你喜欢的名字

每次系统升级或替换新的EFI后，都要打开 `Kext Utility.app` 自动重建缓存，最好还在终端用 `sudo nvram -c` 命令清空一次NVRAM

