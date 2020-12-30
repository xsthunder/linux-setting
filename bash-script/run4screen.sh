# linux-shell-screen后台调用-后台运行脚本和命令-仿start命令-伪窗口界面 - 梁祝的博客 - 博客园https://www.cnblogs.com/date/p/10497571.html
# put this filename on the project root, cd to the project and run it by bash run4screen.sh

# exp
# eject the script in ~/.jupyter/jupyter_notebook_config.py
# import subprocess
# subprocess.run(["bash", "/home/user/temp-host/startup-all4screen.sh"])

BASH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" >/dev/null && pwd  )"

# use dirname as screen name
dirname=`echo $BASH_DIR | egrep -o "[^/]+$"`

echo you run the following
echo cd ${BASH_DIR}
echo screen -ls | grep 6c-daily-bonus  > /dev/null || screen -dmS $dirname bash -c \"bash ./run4screen.sh\"
echo create screen with name $dirname

echo entering $(pwd)
bash run.sh >> output.txt
echo exit script
