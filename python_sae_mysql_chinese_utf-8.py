#!/usr/bin/python
# -*- coding: UTF-8 -*-
from flask import Flask
from flask import request
import sae.const
import MySQLdb

sae.const.MYSQL_DB      # ���ݿ���
sae.const.MYSQL_USER    # �û���
sae.const.MYSQL_PASS    # ����
sae.const.MYSQL_HOST    # �����������ɶ�д��
sae.const.MYSQL_PORT    # �˿ڣ�����Ϊ<type 'str'>������ݿ��Ҫ������ת��Ϊint
sae.const.MYSQL_HOST_S  # �ӿ�������ֻ����

app = Flask(__name__)  
app.debug = True  

def db():
    db = MySQLdb.connect(sae.const.MYSQL_HOST,sae.const.MYSQL_USER,sae.const.MYSQL_PASS,sae.const.MYSQL_DB,port=int(sae.const.MYSQL_PORT),charset='utf8')
	# ʹ��cursor()������ȡ�����α� 
    cursor = db.cursor()
	# ʹ��execute����ִ��SQL���
    cursor.execute("SELECT VERSION()")
    #һ�����ݿ⡣
    data = cursor.fetchone()
    sql="SELECT * FROM `Sheet1` WHERE 1"
    ans="<p>In database<p>"
    cursor.execute(sql)
    # ��ȡ���м�¼�б�
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
        # ��ӡ���
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