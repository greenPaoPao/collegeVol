# CollegeVol

（使用方法见底部）

大学生志愿者小程序

|  小程序模块    |  文件路径    |
| ---- | ---- |
|  小程序后端    |   /backend   |
|  小程序前端    |  /frontend    |
|  web前端    |  /vol-web    |

项目包含有完整的志愿者在小程序端报名活动，管理员在web端审核通过活动，志愿者通过二维码扫码报名签到的功能。



涉及技术

前端    iview + vue + vuex + axios

后端    springBoot + redis + Mysql



附件

|  小程序文件模块    |  文件路径    |
| ---- | ---- |
| 1、数据库设计表     |  /志愿者数据库设计v1.0.doc    |
| 2、小程序Rest接口详细说明 | /志愿者小程序后端接口说明.md   |
|  3、小程序开发文档---开发环境规约和说明    | /志愿者小程序开发文档.docx     |
| 4、数据库脚本 | /covdb.sql |



参考文档

ivew  http://v1.iviewui.com/docs/guide/install

小程序  https://developers.weixin.qq.com/miniprogram/dev/framework/



使用方法

1、启动后端

（1）安装后端环境

后端需要java8，mysql环境，使用maven管理后端项目

（2）导入数据库

进入本地数据库mysql，执行covdb.sql，导入数据库，

数据库名为covdb

（3）启动后端项目

用idea打开backend，open file as itellij idea project，maven加载好后，启动项目，后端占用8888端口；



2、启动前端

（1）web端进入vol-web，使用如下指令启动前端

需要node.js

```bash
npm install
npm run serve 
```

（2）启动小程序前端，将frontend文件夹导入微信小程序开发者工具



