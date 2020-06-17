# H5 4人捕鱼大乱斗


## 项目仓库

```
https://git.huoys.com/oversea/game/base.git qp_develop分支
https://git.huoys.com/qp/h5srby.git
```

## 将markdown文档生成pdf
将markdown生成pdf使用了 gitbook 方案，gitbook环境的搭建请自行百度。

使用gitbook生成pdf，先进入H5捕鱼目录，使用以下命令生成pdf
```
gitbook pdf . H5捕鱼服务器文档.pdf
```


## 知识

## 文档编写说明
使用免费图床 
https://sm.ms/

https://tableconvert.com/


## gitbook


book.json
```
{
    "plugins": [
        "-lunr", "-search", "search-pro",
        "expandable-chapters-small",
        "splitter",
        "code",
        "-sharing",
        "navigator",
        "simple-page-toc",
        "tbfed-pagefooter",
        "alerts",
        "auto-scroll-table",
        "popup",
        "todo"
    ],
    "pluginsConfig": {
        "simple-page-toc": {
            "maxDepth": 3,
            "skipFirstH1": true
       },
       "tbfed-pagefooter": {
        "copyright":"金振涛",
        "modify_label": "该文件修订时间：",
        "modify_format": "YYYY-MM-DD HH:mm:ss"
        }
    }
}

```

安装目录 nodejs/node_modules/npm/npmrc 文件追加
```text
registry=http://registry.npm.taobao.org
```

npm init

install.sh
```bash
npm install gitbook-plugin-search-pro
npm install gitbook-plugin-back-to-top-button
npm install gitbook-plugin-expandable-chapters-small
npm install gitbook-plugin-splitter
npm install gitbook-plugin-code
npm install gitbook-plugin-insert-logo
npm install gitbook-plugin-navigator
npm install gitbook-plugin-simple-page-toc
npm install gitbook-plugin-todo
npm install gitbook-plugin-tbfed-pagefooter
npm install gitbook-plugin-alerts
npm install gitbook-plugin-auto-scroll-table
npm install gitbook-plugin-popup

sleep 10s
```