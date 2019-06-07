## Change log

2019-05-14

- 更新使用群友 Grason Chan 的 clover 主题 [Minimalism](https://github.com/grasonchan/clover-themes)
- 新增耳麦插件 [ComboJack](https://github.com/hackintosh-stuff/ComboJack)

2019-03-14

- 使用 VoodooI2C 驱动触控板，得到原生触控板手势
- 修改了一些SSDT hotpatch

2019-03-11

- 关闭TCPKeepAliveDuringSleep和NotificationWake，解决了睡眠后可能会导致的RTC唤醒问题，建议都更新
- 一些常规的clover更新
- 修改了一些SSDT hotpatch
- 删除SSDT-PNLF.aml，改为使用WhateverGreen直接支持的亮度调节方式

2019-02-23

- 修复一些问题

2019-02-01

- 把原来 10.13 的彻底更新
- 10.14 新增 `config-Spoof.plist`，此配置仿冒 skylake 解决了 HD620 在 10.14 下的模糊不正常问题。同时，使用此配置也能有更好的 hidpi 设置样式，而且 10.13 也可以用，值得一试
- 更新黑果小兵的 ALCPlugFix
- 更新 Lilu 相关 kext

2019-01-02

- 新年快乐

2018-12-08

- 更新 voodoo 触控板驱动，解决触控板设置空白的问题(虽然没卵用)

2018-11-15

- 更新 clover
- 更新一些 kext

2018-10-25

- 更新 clover

2018-10-25

- 更新 clover

2018-09-28

- 常规更新，修改音频 ID 注入方式

2018-09-20

- Fix the Bluetooth "wake from sleep" problems, maybe.

2018-09-18

- Frequency data is from SSDT-FREQ.aml now.

2018-09-15

- 10.14 的 EFI 更新
- 10.13 的 EFI 修复之前某些机器无法启动的问题，以后不再更新
- 10.14 的 EFI 也可以在 10.13 使用

2018-08-15

- 更新 clover
- 更新 lilu 相关

2018-08-03

- 更新 clover
- 更新 lilu 相关
- 可能是 10.13 EFI 最后一个版本，10.14 正式版发布后将在 10.14 文件夹更新

2018-06-23

- 更新 clover
- 使用 [ApfsDriverLoader.efi](https://github.com/acidanthera/ApfsSupportPkg) 加载  apfs.efi 
- 回滚 `SSDT-DDGPU.aml`，这可能会拯救有独显机器的电池，Thanks BrunoGM [#13](https://github.com/xzhih/dell-7460-7560-hackintosh/issues/13)

2018-06-10

- 更新 clover
- Lilu 相关常规更新
- 新增 10.14 beta 的支持，可能部分人装不上，我是装上了

2018-04-30

- 劳动节更新

2018-04-20

- 更新 clover
- Lilu 相关常规更新
- HD620 修改核显显示 2048MB，自己在 config 中打开

2018-04-03 

- 合并燃 1 代 2 代 EFI
- 更新 clover
- 转移 HIDPI 脚本，更方便使用

2018-03-27

- 更新 HIDPI 脚本，添加不打补丁的选项
- 可能解决了燃 2 代的的唤醒问题，没有机器无法测试

2018-03-20

- 增加燃 2 代的支持

2018-03-12

- 常规更新 clover
- 更新 SSDT hotpatch 
- 支持 MacOS 10.13.4 beta4

2017-12-9

- 常规更新 clover
- 支持 MacOS 10.13.2

2017-11-24

- 重新制作 SSDT hotpatch 

2017-11-13

- 更新 clover 4297
- 更新 黑果小兵的 ALCPlugFix
- 更新 HIDPI 脚本，之前的版本虽然模糊过渡自然，但是睡眠唤醒闪屏，鱼与熊掌不可兼得
- 适配 MacOS 10.13.2
- Lilu 相关常规更新
- 修复 iTunes 退出问题
- 可能修复了关机亮度保存，开机亮度恢复问题
- SSDT hotpatch 来自 [RehabMan](https://github.com/RehabMan/OS-X-Clover-Laptop-Config) 

