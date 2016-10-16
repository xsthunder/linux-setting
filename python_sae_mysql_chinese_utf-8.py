#!/usr/bin/python
# -*- coding: UTF-8 -*-
from flask import Flask
from flask import request
import sae.const
import MySQLdb

sae.const.MYSQL_DB      # 数据库名
sae.const.MYSQL_USER    # 用户名
sae.const.MYSQL_PASS    # 密码
sae.const.MYSQL_HOST    # 主库域名（可读写）
sae.const.MYSQL_PORT    # 端口，类型为<type 'str'>，请根据框架要求自行转换为int
sae.const.MYSQL_HOST_S  # 从库域名（只读）

app = Flask(__name__)  
app.debug = True  

def db():
    db = MySQLdb.connect(sae.const.MYSQL_HOST,sae.const.MYSQL_USER,sae.const.MYSQL_PASS,sae.const.MYSQL_DB,port=int(sae.const.MYSQL_PORT),charset='utf8')
	# 使用cursor()方法获取操作游标 
    cursor = db.cursor()
	# 使用execute方法执行SQL语句
    cursor.execute("SELECT VERSION()")
    #一条数据库。
    data = cursor.fetchone()
    sql="SELECT * FROM `Sheet1` WHERE 1"
    ans="<p>In database<p>"
    cursor.execute(sql)
    # 获取所有记录列表
    results = cursor.fetchall()
    #for i in results:
    #    ans=ans+i[0]
    #ans+"trial1</p>"
    #return ans

    for row in results:
        
    	fname = row[0]
        lname = row[6]
        age = row[7]
        sex = row[8]
        income = row[9]
        book_type=row[10]
        # 打印结果
        ans=ans+"<h5>%s,%s,%s,%s,%s,%s</h5>" % \
        (fname,lname,age,sex,income,book_type )
        
    db.close()
    ans=ans+'''<!--  '''
    return "<h1>Database version : %s </h>" % data+ans
        
def myform ():
    return db()
    return '''<form action="/signin" method="post">
              <p><input name="username"></p>
              <p><input name="password" type="password"></p>
              <p><button type="submit">Sign In</button></p>
              </form>'''+db()+end()
@app.route('/', methods=['GET', 'POST'])


def home():
    return myform()


@app.route('/signin', methods=['POST'])

    
def signin():
    if request.form['username']=='1' and request.form['password']=='1':
        return '<h3>Hello, admin!</h3>'
    return '<h3>Bad username or password.</h3>'

if __name__ == '__main__':
    app.run()