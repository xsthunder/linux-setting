# chinese support, need utf-8 for terminal charset
# see https://blog.csdn.net/timo1160139211/article/details/79490582
git config --global --add core.quotepath false

# set user name
git config --global --add user.email xsthunder@outlook.com
git config --global --add user.name xsthunder

# set variance in editor
# git config --global --edit

git config --global core.editor vim

# https://www.cnblogs.com/flying_bat/p/3324769.html
git config --global core.autocrlf false # 提交检出均不转换

#提交包含混合换行符的文件时给出警告
git config --global core.safecrlf warn


git config --global http.https://github.com.proxy socks5://127.0.0.1:10808
