---
Title: 伺服器與版本
Date: 2022-10-01 11:00
Category: Server
Tags: w4
Slug: 2022_fall_cad2022_server _and_version
Author: mdecycu
---

2022 Fall 計算機程式及電腦輔助設計與實習等兩門課程, 總共牽涉 github, onedrive, mail2000, replit, onshape, gmail 等廠商提供的伺服器, 另外還有自架的 Flask 伺服器.

<!-- PELICAN_END_SUMMARY -->

廠商提供的伺服器
====

github, onedrive, mail2000, replit, onshape, gmail 等廠商提供的伺服器中, 只有 mail2000 由學校購買, 其餘都使用免費帳號, 之所以免費, 是以使用歷程換來的. 可想而知, 各廠商所提供的免費帳號都有許多限制, 其中 replit 雖然使用方便, 但所能取得的免費資源有限, 當使用頻率較高時, 經常會無法連線.

至於自架的 Flask server, 因為硬體在校內工作站室, 偶爾會有斷電與主機故障的問題, 但正常運作下, 仍然比雲端許多免費帳號下的伺服器好用許多.

自架 Server
----

假如要以自己架設的伺服器來取代 Replit, 第一步是如何在 Ubuntu 22.04 Server 上建立每位學員的帳號. 使用 [newusers] 指令, 配合建立一個包含帳號、密碼、uid、gid、comment、home dir 以及 shell (/bin/bash) 資料的 users.txt, 然後使用 sudo newusers users.txt 就可以完成所有學員帳號的建立. 但必須要先取得初始 uid, 也就是列出現有帳號的所屬 uid, 然後才能設定後續代號的 user id.

列出現有帳號 uid 的指令為: cut -d: -f1,3 /etc/passwd

表示要從 /etc/passwd 檔案, 以 : 符號分割檔案, 然後只取出第一與第三欄位的資料. 假如傳回:

<pre class="brush: jscript">
root:0
daemon:1
bin:2
sys:3
sync:4
games:5
man:6
lp:7
mail:8
news:9
uucp:10
proxy:13
www-data:33
backup:34
list:38
irc:39
gnats:41
nobody:65534
_apt:100
systemd-network:101
systemd-resolve:102
messagebus:103
systemd-timesync:104
pollinate:105
sshd:106
syslog:107
uuidd:108
tcpdump:109
tss:110
landscape:111
usbmux:112
tcexam:1000
lxd:999
postgres:113
tcexamdb:1001
cad2022:1002
stunnel4:998
cd1:1002
cd3:1003
</pre>

表示新建帳號的 uid 與 gid 就可以從 1004 開始, 然後連續增量後配給新的用戶.

[newusers]: https://manpages.ubuntu.com/manpages/xenial/man8/newusers.8.html
[waitress]: https://docs.pylonsproject.org/projects/waitress/en/stable/index.html

IP 位址或埠號分配
====

當各學員在一台 Ubuntu 22.04 Server 上擁有帳號 (最理想的情況是用 Email 通知其主機資訊與帳號密碼) 之後, 隨即可以利用 ssh 進行遠端登入.

進入 Ubuntu 操作系統後, 就能夠利用 git clone 取下課程倉儲, 然後利用 python3 cmsimde/wsgi.py 執行動態網頁, 若各學員能夠從 port 8000 - 9000 之間進行分配區隔, 只要各學員配合修改 init.py 中的 IP 與 port 設定後, 就可以分別以自架主機取代 Replit.

waitress
----

直接利用 Python3 執行 wsgi.py 儘管可以讓使用者登入編輯動態網站, 但效率並沒有 wsgi 模式高, 因此若能採用 [waitress] 的方式啟用動態網頁, 應該是較好的做法. 但 https 對外連線仍需透過 Stunnel 或 Nginx 銜接完成.

這時, 只要在倉儲根目錄建立 waitress_server.py

<pre class="brush: python">
from waitress import serve
from cmsimde import flaskapp
 
serve(flaskapp.app, listen="127.0.0.1:9443")
</pre>

然後 stunnel.conf 搭配設定:

<pre class="brush: jscript">
[https]
accept = stud.cycu.org:443
connect = 127.0.0.1:9443
cert = fullchain.pem
key = privkey.pem
TIMEOUTclose = 0
</pre>

就可以在 python3 waitress_server.py 執行下, 讓外部以 https://stud.cycu.org 連結到對應的動態網頁.

在此的問題是, waitress_server.py 如何以 service 啟動, stunnel 如何搭配執行. 最簡單的情況是 Stunnel 先以 service 執行, 但事先納入所有學員的規劃 port, 其中包括內容 port 以及外部 port, 並且讓學員在需要編輯動態網頁的時候, 自行啟動各自的 waitress_server.py

利用 Python 取 IPv6 網路位址:

<pre class="brush: python">
import socket
ip = socket.getaddrinfo("stud.cycu.org", 0, socket.AF_INET6)[0][4][0]
print(ip)
</pre>

Virtualbox 虛擬主機
====

利用一台 16 核 80 GB 記憶體的虛擬主機, 建立約 250 個用戶後, 看能否透過 Stunnel 與 wsgi 啟動各自的 cmsimde 動態網站.

為了建立多用戶帳號, 可以利用 newusers 指令, 配合 users.txt 檔案:

users.txt 檔案格式, 分別是: 使用者帳號, 預計使用 cad 加上學號, 或者是 cp 加上學號, 而密碼可以採用亂數產生, 至於 uid 與 gid 則需先使用

cut -d: -f1,3 /etc/passwd 

查詢現有帳號的對應 id 後, 再逐一利用迴圈增量. 至於 comment 欄位, 可以直接採用 cad 或 cp 加上學號, 而 shell 欄位則選用 /bin/bash

user_1:password_2:1002:1002:user_1:/home/user_1:/bin/bash

sudo newusers users.txt

依照上述流程建立帳號後, 可以保留使用者學號、帳號與對應密碼, 然後利用 Gmail 將此訊息郵寄給各用戶.

至於透過程式方法必須完成下列事項:

1. 建立 users.txt, 然後傳送至虛擬主機
2. 利用 sudo newuser users.txt 建立各用戶帳號與 home directory
3. 建立 users_account.txt, 包含與 users.txt 各用戶帳號與密碼資訊
4. 利用 Gmail 逐一將 users_account.txt 的帳號與密碼資訊寄給用戶

password generator
----

Brython 版 [password generator].

<pre class="brush: python">
import random
import string

def password_generator(size=4, chars=string.ascii_lowercase + string.digits):
    
    """Generate random password
    """
    return ''.join(random.choice(chars) for _ in range(size))

pass_string = "abcdefghkmnpqrstuwxyz123456789"
for i in range(10):
    print(password_generator(4, pass_string))
</pre>

[password generator]: https://mde.tw/content/Brython.html?src=https://gist.githubusercontent.com/mdecycu/2c6323eff49b496d1bafd210f3ec9707/raw/8864b4178c8ec64f60d30014d3ab743499d51be4/password_generator.py

2022 Fall 課程代號
----

首先要建立各課程對應的 Ubuntu 帳號與密碼檔案:

<pre class="brush: python">
# 導入亂數模組
import random
# 導入字串模組
import string
# 利用 def 關鍵字定義函式
# 函式的輸入變數可以設定初始值
def password_generator(size=4, chars=string.ascii_lowercase + string.digits):
    # 函式內以多行註解說明函式功能
    """Generate random password
    """
    # 利用 return 關鍵字將所產生的亂數字串傳回
    return ''.join(random.choice(chars) for _ in range(size))
# 建立一個變數與隨後的字串對應
pass_string = "abcdefghkmnpqrstuwxyz123456789"
cp_num = ["0747", "0761"]
cad_num = ["0773", "0786"]
def gen_acc_pass(course, course_num):
    stud_list =[]
    for num in course_num:
        url = "https://nfu.cycu.org/?semester=1111&courseno=" + num + "&column=True"
        class_list = open(url).read().split("\n")[:-1]
        stud_list += class_list
        #print(stud_list)
    for stud_num in stud_list:
        password = password_generator(4, pass_string)
        #print(password)
        account = course + stud_num
        #print(account)
        print(stud_num + "\t" + account + "\t" + password)
gen_acc_pass("cp", cp_num)
gen_acc_pass("cad", cad_num)
</pre>

Windows 與 Ubuntu 格式差異
====

create_users_txt.py

<pre class="brush: python">
with open("2022_fall_ubuntu_account_pass.txt") as f:
    data = f.readlines()
# newusers format:  
# pw_name:pw_passwd:pw_uid:pw_gid:pw_gecos:pw_dir:pw_shell
# uid starts from 1002
uid_starts = 1001
users = ""
send = ""

for i in data:
    #stud_num \t account \t password \n
    stud = i.split("\t")
    stud_num = stud[0]
    account = stud[1]
    password = stud[2].rstrip()
    uid_starts += 1
    uid = str(uid_starts)
    gid = uid
    gecos = account
    home_dir = "/home/" + account
    shell = "/bin/bash"
    #print(stud_num, account, password)
    users += account + ":" + password + ":" + uid + ":" + gid + ":" + gecos + ":" + home_dir + ":" + shell + "\n"
    send += stud_num + ":" + account + ":" + password + "\n"

with open("users.txt", "w", encoding="utf-8", newline='\n') as f:
        f.write(users)

with open("send.txt", "w", encoding="utf-8", newline='\n') as f:
        f.write(send)
</pre>

假如沒有採用 newline='\n', 在 Windows 寫檔案所使用的跳行符號, 以 sftp 傳到 Ubuntu 時將會因為 shell 並非 /bin/bash 而是加上 ^M$ 的錯誤 shell 資料, 導入用戶無法 login.

若要修正跳行符號錯誤, 可以採用:

change_shell.py

<pre class="brush: python">
import os
with open("users.txt", "r", encoding="UTF-8") as f:
    data = f.read().splitlines()
for i in data:
    account = i.split(":")[0]
    print(account)
    os.system("sudo chsh -s /bin/bash " + account)
</pre>

當執行上列程式時, 為避免在程式中列出管理者密碼, 可以編輯 /etc/sudoers 並加入:

<pre class="brush: jscript">
# only require a password once every 60 minutes
Defaults timestamp_timeout=60
</pre>

可以讓 sudo python3 change_shell.py 執行時無需輸入管理者密碼.

Stunnel
----

/etc/default/stunnel4 需要加入 

ENABLED=1

才能讓 stunnel4 與伺服器同時啟動, 重新啟動則使用 sudo /etc/init.d/stunnel4 restart

當伺服器運作期程結束, 可以在 /etc/sudoers 已經納入 timeout 設定後, 利用 python3 del_users.py 刪除對應的使用者與其用戶目錄.

<pre class="brush: python">
import subprocess
 
"""
/etc/sudoers
vi /etc/sudoers
use w! to write the read only file
add the following to sudoers
 
# only require a password once every 60 minutes
Defaults timestamp_timeout=60
 
use 
sudo python3 del_users.py
to delete users and their home directories
"""
 
with open("users.txt", "r") as f:
    data = f.read().splitlines()
#print(data)
stud_list = []
for i in data:
    stud_num = i.split(":")[0]
    #print(stud_num)
    stud_list.append(stud_num)    
for user in stud_list:
    try:
        subprocess.run(["sudo", "userdel", "-r", user], check=True)
        print(str(user) + " deleted!")
        subprocess.run(["sudo", "rm", "-rf", f"/home/{user}"], check=True)
        print(str(user) + " home deleted!")
    except subprocess.CalledProcessesError:
        print(str(user) + " is not deleted!")
</pre>

其中的 users.txt 就是前面用來建立用戶帳號的設定檔案.



[next line difference]: https://askubuntu.com/questions/1129965/users-created-using-newusers-command-unable-to-login-in-ubuntu-18-04

[sudoers]: https://askubuntu.com/questions/155791/how-do-i-sudo-a-command-in-a-script-without-being-asked-for-a-password/155827#155827
