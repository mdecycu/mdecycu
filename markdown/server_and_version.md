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


