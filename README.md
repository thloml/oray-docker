# oray-docker
花生壳5.1 docker启动版本
使用--mac-address参数指定mac地址可生成不同的SN
- 5.0.0版本：

- -  运行 `` docker run -dit --name oray --restart=always  thloml/oray_ddns:5.0.0``
-  - 使用 ``docker exec oray phddns status``查看状态
-  - 获取到sn后，使用sn和默认密码admin登录b.oray.com，再绑定花生壳子账号

- 5.1 版本
- -  运行 `` docker run -dit --name oray --restart=always  thloml/oray_ddns:5.1``
-  - 使用 ``docker exec oray phddns status``查看状态
-  - 获取到sn后，使用sn和默认密码admin登录b.oray.com，再绑定花生壳子账号


> 若使用默认密码无法登录，则该账户可能被绑定过，需要为容器指定新mac地址生成新的sn
