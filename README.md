# Actions OpenWrt Snapshot


### 特色:

+ Cutting edge,openwrt官方master分支版本,luci19.07 内核升级到5.4. 与官方最新源码同步.

+ 原生极致纯净,固件默认只包含基础上网功能,后台在线选装插件,自建插件仓库囊括了市面上主流开源插件,系统升级不丢失插件和配置.

+ 后台一键在线更新固件,省去了每次固件升级都需要找固件,下载固件,上传固件等繁琐操作.

+ 重构版SSR-PLUS,国内外智能DNS解析,支持DOH

+ 性能,友好度,易用性,插件,以及针对国内特殊环境等的自定义优化, 开箱即用

+ 自定制清爽Material风格新主题Edge

+ 无需专业知识,无需linux服务器,人人皆可通过云编译定制编译自己的专属固件.

+ 持续更新, 每周日零点定时自动云编译更新固件,不用再担心因停更而需更换固件.


                                  |


后台入口 10.0.0.1 &nbsp;(若后台无法打开,请插拔交换wan,lan网线顺序.)

默认密码 root

第一次使用请采用全新安装,避免出现升级失败以及其他一些可能的Bug.

云编译需要 [在此](https://github.com/settings/tokens) 创建个token,然后在此仓库Settings->Secrets中添加个名字为REPO_TOKEN的Secret,填入token值,否者无法触发编译

在仓库Settings->Secrets中分别添加 PPPOE_USERNAME, PPPOE_PASSWD 可设置默认拨号账号密码.有 [安全隐患](https://github.com/garypang13/Actions-OpenWrt/issues/23)

Secrets中添加 SCKEY 可通过[Server酱](http://sc.ftqq.com) 推送编译结果到微信

Secrets中添加 TELEGRAM_CHAT_ID, TELEGRAM_TOKEN 可推送编译结果到Telegram Bot. [教程](https://longnight.github.io/2018/12/12/Telegram-Bot-notifications)

编译触发方式: 
   + 方式1: Actions页面选择 Repo Dispatcher 点击 Run workflow
   + 方式2: 请在支持油猴的浏览器中安装 [脚本](https://greasyfork.org/scripts/407616-github-actions-trigger/code/Github%20Actions%20Trigger.user.js) ,仓库右上角会出现 x86_64 Actions,K2P Actions等按钮,点击对应按钮即可.更多玩法 [repo-dispatcher](https://github.com/tete1030/github-repo-dispatcher)
diy云编译教程: [Read the details in my blog (in Chinese) | 中文教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

### 默认插件包含:

+ Opkg 软件包管理
+ SSR-PLUS
+ Adblock 基于DNS的广告过滤
+ UPNP 自动端口转发
+ Turbo ACC 网络加速

其他插件请自行在 后台->软件包 中安装,系统升级不会丢失插件.每次系统升级完成连接网络后,会自动安装所有已自选安装的插件.

#### 默认后台地址 10.0.0.1, 密码 root

#### X64设备请分配不低于800M 的磁盘空间.

### 如何在本地使用此项目编译自己需要的 OpenWrt 固件

#### 注意：

1. **不**要用 **root** 用户 git 和编译！！！
2. 国内用户编译前请准备好梯子,使用大陆白名单或全局模式
3. 请使用Ubuntu 64bit，推荐  Ubuntu 18 或 Ubuntu 20

#### 一键脚本:

 首次编译:
```
screen -S openwrt
wget -O compile.sh https://raw.githubusercontent.com/garypang13/Actions-OpenWrt/master/onekey/compile.sh && bash compile.sh
```

 二次编译:
```
screen -S openwrt
wget -O recompile.sh https://raw.githubusercontent.com/garypang13/Actions-OpenWrt/master/onekey/recompile.sh && bash recompile.sh
```

Build OpenWrt using GitHub Actions

### Usage

- Sign up for [GitHub Actions](https://github.com/features/actions/signup)
- Fork [this GitHub repository](https://github.com/garypang13/Actions-OpenWrt-Nginx)
- click the `Star` button, and the build will starts automatically.Progress can be viewed on the Actions page.
- When the build is complete, click the `Artifacts` button in the upper right corner of the Actions page to download the binaries.

### Acknowledgments
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [CTCGFW's Team](https://github.com/project-openwrt/openwrt)
- [Lienol](https://github.com/Lienol/openwrt)
- [P3TERX](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
- [upload-release-action](https://github.com/svenstaro/upload-release-action)
- [Microsoft](https://www.microsoft.com)
- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub](https://github.com)
- [GitHub Actions](https://github.com/features/actions)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Cisco](https://www.cisco.com/)

![](https://github.com/garypang13/luci-theme-edge/raw/master/Screenshots/1.png)
![](https://github.com/garypang13/luci-theme-edge/raw/master/Screenshots/2.png)
![](https://github.com/garypang13/luci-theme-edge/raw/master/Screenshots/3.png)
![](https://github.com/garypang13/luci-theme-edge/raw/master/Screenshots/8.png)
![](https://github.com/garypang13/luci-theme-edge/raw/master/Screenshots/4.png)
![](https://github.com/garypang13/luci-theme-edge/raw/master/Screenshots/5.png)
<br/>
<br />
<img src="https://github.com/garypang13/luci-theme-edge/raw/master/Screenshots/6.png" width="550" />
![](https://github.com/garypang13/luci-theme-edge/raw/master/Screenshots/7.png)
