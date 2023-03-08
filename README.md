## 数据入库服务
### 项目文件简述
#### djangoProject
项目主配置，包含路由和基础配置
#### app01
##### middleware
auth.py: 登录用的中间件文件，检验登录状态

##### migrations
执行数据库迁移的记录

##### static
静态文件目录

##### templates
模板目录

##### utils
bootstrap.py: 样式模块，作用是直接调用即可使用默认样式，无需自己写前端

code.py: 登录页面验证码处理模块

encrypt.py: 将密码转换成md5形式，不以明文显示

pagination.py: 自定义分页组件，可对数据库展示数据实现翻页及搜索

##### views
account.py: 登录相关代码

admin.py: 管理员相关代码

polymerize.py: 瑞果上险聚合相关代码

upload.py: 数据入库相关代码

#### db/config
数据库相关操作

#### media
上传的excel原文件

#### process
数据处理函数


## 历史数据入库问题汇总及注意事项
gaogong：国产乘用车ADAS数据可能出现列错位情况，本应为数字的列可能存在字符串

HJT：HJT指数入库时需确认表头信息，以防出错

medicinenetwork：入库时需确认文件列数，“采招网地址”列会不定期出现

ruiguo：原文件数据量太大，不要上传至git！

solarzoom：制造环节及各企业产品价格中，表2.硅片可能会在EFGH列出现异常数据导致入库失败，直接从原文件中删去错误数据即可