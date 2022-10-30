---
Title: 2022 Fall 課程 w8
Date: 2022-10-29 11:00
Category: cad2022
Tags: w6, cad2022, cp2022
Slug: 2022_fall_courses_w8
Author: mdecycu
---

2022 Fall 課程進入第八週, 就計算機程式與電腦輔助設計實習等課程的架構, 其核心都是繞著網站運作.

<!-- PELICAN_END_SUMMARY -->

計算機程式課程核心
----

一言以蔽之, 計算機程式課程的核心, 就是教導如何在網站上執行程式, 假如只是考慮到網站的前端, 就是讓學員了解如何運用 html、css 與 Javascript, 若涵蓋網站後端, 則指如何使用 Python 程式與網站前端互動.

然而對機械設計流程之後的應用而言, 在網站上執行程式的重點, 是如何利用網路與程式在網站上進行機電系統模擬.

網站
====

KMOLab 課程的網站雖然以 Github Pages 上的網站為主, 但是在轉換為 html 超文件網站之前, 使用者可以透過網站前端與後端的計算機程式與 CAD 套件互動, 然後再設法將模擬或設計的機電資系統結果呈現在 Github Pages 網站上.

由於 Siemens NX 套件的 NXOpen 程式延伸架構允許利用 Python 程式編寫 API 程式, 因此就網站前端的程式語言選擇, 並非直接使用 Javascript, 而是採用 Brython. 也就是使用者可以在網頁上編寫 Python 格式的 Brython 程式, 然後再轉為 Javascript 執行. 至於後端則使用 CPython + Flask 設法與 NX 、Solvespace 及 Coppeliasim 進行互動.

2022 Fall 各學員的網站倉儲採用 Github Classroom 配置, 也就是讓各學員的個人課程倉儲位於計算機程式 (cp2022) 與電腦輔助設計實習 (cad2022) 的 organization 代號下: mdecp2022 與 mdecad2022.

目前 Github Pages 上的倉儲只能顯示最新版特定 branch 上的資料, 因此若希望靜態或動態網站能夠將曾經改版的歷史資料逐一呈現, 則必須在自行架構的同步倉儲中利用網際程式, 或將倉儲的歷程資料同步轉入 Fossil SCM 的 Docs 網站才可達成.

這裡所謂的網站指符合 WWW 網路協定規範的伺服器, 假如只是純粹在 Ubuntu 或 Windows 上希望透過 WWW server 伺服網頁, 可以採用 Nginx, 其中可以設定為 http 伺服或加上  LetsEncrypt 設定為 https 伺服.

至於[區分靜態與動態網站]的關鍵在於是否可透過程式方法, 直接登入 WWW 網站修改內容, 一般來說, 靜態網頁的內容修改, 是修改 html, css 或 Javascript 資料, 該靜態網站的 html 檔案並無讓管理者登入的選項, 但動態網站則通常透過 server 端的程式來產生網頁, 而這些網頁可以採用純 html 的方式儲存, 也可透過 Database 的方式儲存.

使用者可以將靜態網站視為一個網站最終呈現給使用者的資料, 而動態網站則可以透過程式方法, 配合組織內的各種運作流程來呈現網站內容. 而這些產生網站資料的流程允許置入審查機制或各種內部管理流程的運作後才產生配置在網站上的內容. 然而隨著 Javascript 前端程式的蓬勃發展, 靜態網站與動態網站的區別可以透過網站內容是否牽涉伺服器上的程式運作而定. 網站內容所執行的程式僅依賴網站前端的程式者可視為靜態網站.
而網站內容除了網站前端程式外, 還包括網站後端 server 程式的搭配才產生網站內容者, 則可視為動態網站.

[區分靜態與動態網站]: https://www.wix.com/blog/2021/11/static-vs-dynamic-website/

程式的編寫與儲存
====

計算機程式課程的推動, 在各學員都能透過 Github Pages 呈現個人倉儲網站內容之後, 就可以直接在個人的靜態網頁中呈現其學習計算機程式語言的歷程. 由於各學員所編寫的 Brython 被要求儲存在其帳號下的 Gist 區域, 因此每次的程式內容改版都能透過版次號碼擷取, 假如再要求各種程式開發過程, 必須仔細透過程式註解說明各段程式編寫的構想與採行方法, 如此便可經由各學員繳交程式的改版歷程所參照的資料或構想判定其原創程度.

例如: 各學員在 Gist 上編寫程式時, 必須先提供程式編寫目的, 編寫構想, 編寫參考資料與所擬採行的步驟後, 再逐一實現程式內容. 

計算機程式問題
====
<script src="./../cmsimde/static/brython.js">
</script>
<script src="./../cmsimde/static/brython_stdlib.js"></script>
<script>
window.onload=function(){
brython({debug:1, pythonpath:['./../cmsimde/static/','./../downloads/py/']});
}
</script>
以下為 1a 計算機程式學員的靜態網頁連結:
<p id="brython_div1"></p>
<script type="text/python3">
# 從 Brython 的 browser 模組導入 document 與 html 程式庫
from browser import document, html

# 利用 document 物件, 以索引 "brython_div1" 取得已經位於 html 網頁中 id="brython_div1" 的位置, 且對應到 brython_div1 變數
brython_div1 = document["brython_div1"]
# 可以用三個單引號或三個雙引號標註多行註解
# 其中的 html 物件有許多建立 html 超文件內容的方法, 以下分別建立
# BUTTON 按鈕, BR 跳行 (break), 以及 A 網站連結 (Anchor)
# <= 是 Brython 程式語言的特殊符號, 專用於將 html 超文件資料送給網頁對應變數
"""
brython_div1 <= html.BUTTON("hello")
brython_div1 <= html.BR()
brython_div1 <= html.A("google", href="https://google.com")
"""
try:
    c = document.query["c"]
except:
    c = "1a"
# 將 1b.txt 資料從 Github Pages 網頁中取下
url = "https://mde.tw/studlist/2022fall/" + c + ".txt"
# 利用 open() 開啟網頁, 利用 read() 讀取網頁內容
# 然後利用 split() 方法, 利用跳行符號對資料進行切割, 切割後的資料結構為 list
# list 資料結構以 [] 區隔, 表示資料為數列, 其起始的索引值為 0
data = open(url).read().split("\n")
# 將每一位學員的靜態網頁共同的網路連結部分設為字串, 且與 mdecp2022 變數對應
mdecp2022 = "https://mdecp2022.github.io/site-"
# 因為取下的資料第一筆為標題, 而最後一筆為空字串, 可以利用 Brython 的數列索引取值範圍將索引 0 與最後一個數列值去除
data = data[1:-1]
# 利用 for 重複迴圈逐一取出 data 數列中的值, 然後以 \t, 也就是 tab 符號切割
count = 0
for i in data:
    count += 1
    stud = i.split("\t")
    # 第一欄位為學號
    stud_num = stud[0]
    # 第二欄未為 github 帳號
    github_acc = stud[1]
    #print(stud_num, github_acc)
    # 若沒有找到 github 帳號, 以學號作為帳號
    if github_acc == "":
        github_acc = stud_num
    # 將靜態網頁共同連結的變數與各自的 github 帳號, 組成完整的各學員靜態網頁連結
    site = mdecp2022 + github_acc
    # 利用 A 物件產生連結, 然後放入 id="brython_div1 所在的網頁位置
    link = html.A(stud_num, href=site)
    brython_div1 <= link
    # 每一筆資料列出後, 以 break 標註跳行
    # 每一行列出五筆資料後, 跳行
    brython_div1 <= " "
    if count % 5 == 0:
        brython_div1 <= html.BR()
</script>

以下為計算機程式 1b 修課學員的個人倉儲靜態網頁連結:

<p id="brython_div2"></p>
<script type="text/python3">
# 從 Brython 的 browser 模組導入 document 與 html 程式庫
from browser import document, html

# 利用 document 物件, 以索引 "brython_div2" 取得已經位於 html 網頁中 id="brython_div2" 的位置, 且對應到 brython_div2 變數
brython_div2 = document["brython_div2"]
# 可以用三個單引號或三個雙引號標註多行註解
# 其中的 html 物件有許多建立 html 超文件內容的方法, 以下分別建立
# BUTTON 按鈕, BR 跳行 (break), 以及 A 網站連結 (Anchor)
# <= 是 Brython 程式語言的特殊符號, 專用於將 html 超文件資料送給網頁對應變數
"""
brython_div2 <= html.BUTTON("hello")
brython_div2 <= html.BR()
brython_div2 <= html.A("google", href="https://google.com")
"""
try:
    c = document.query["c"]
except:
    c = "1a"
c = "1b"
# 將 1b.txt 資料從 Github Pages 網頁中取下
url = "https://mde.tw/studlist/2022fall/" + c + ".txt"
# 利用 open() 開啟網頁, 利用 read() 讀取網頁內容
# 然後利用 split() 方法, 利用跳行符號對資料進行切割, 切割後的資料結構為 list
# list 資料結構以 [] 區隔, 表示資料為數列, 其起始的索引值為 0
data = open(url).read().split("\n")
# 將每一位學員的靜態網頁共同的網路連結部分設為字串, 且與 mdecp2022 變數對應
mdecp2022 = "https://mdecp2022.github.io/site-"
# 因為取下的資料第一筆為標題, 而最後一筆為空字串, 可以利用 Brython 的數列索引取值範圍將索引 0 與最後一個數列值去除
data = data[1:-1]
# 利用 for 重複迴圈逐一取出 data 數列中的值, 然後以 \t, 也就是 tab 符號切割
count = 0
for i in data:
    count += 1
    stud = i.split("\t")
    # 第一欄位為學號
    stud_num = stud[0]
    # 第二欄未為 github 帳號
    github_acc = stud[1]
    #print(stud_num, github_acc)
    # 若沒有找到 github 帳號, 以學號作為帳號
    if github_acc == "":
        github_acc = stud_num
    # 將靜態網頁共同連結的變數與各自的 github 帳號, 組成完整的各學員靜態網頁連結
    site = mdecp2022 + github_acc
    # 利用 A 物件產生連結, 然後放入 id="brython_div21 所在的網頁位置
    link = html.A(stud_num, href=site)
    brython_div2 <= link
    # 每一筆資料列出後, 以 break 標註跳行
    # 每一行列出五筆資料後, 跳行
    brython_div2 <= " "
    if count % 5 == 0:
        brython_div2 <= html.BR()
</script>

2D 靜態繪圖

<p id="usa_flag"></p>
<script type="text/python3">
# 畫美國國旗
# 根據 https://en.wikipedia.org/wiki/Flag_of_the_United_States#Specifications 規格繪圖
# 導入 doc
from browser import document as doc
# 以下將利用 html 產生所需的繪圖畫布
from browser import html
# 利用 math 函式庫執行三角函數運算
import math
# height = 1, width = 1.9
width = 600
height = int(600/1.9)
canvas = html.CANVAS(width = width, height = height)
#canvas.style = {"width": "100%"}
canvas.id = "taiwan_flag"
# 將圖畫至 id 為 brython_div 的 cnavas 標註
brython_div = doc["usa_flag"]
brython_div <= canvas
# 準備繪圖畫布
canvas = doc["taiwan_flag"]
ctx = canvas.getContext("2d")

# 進行座標轉換, x 軸不變, y 軸反向且移動 canvas.height 單位光點
# ctx.setTransform(1, 0, 0, -1, 0, canvas.height)

# 以下採用 canvas 原始座標繪圖
flag_w = canvas.width
flag_h = canvas.height

# 先畫滿地紅
ctx.fillStyle='#B31942'
ctx.fillRect(0,0,flag_w,flag_h)

# 6 條白色長方形
# 每條高度 height/13
ctx.fillStyle ='#FFFFFF'
white_height = int(height/13)
whitex = 0
whitey = white_height
white_width = width
for i in range(6):
    ctx.fillRect(whitex, whitey+i*2*white_height, white_width, white_height)

# 藍色區域
blue_height = int(height*7/13)
blue_width = int(width*2/5)
bluex = 0
bluey = 0
ctx.fillStyle ='#0A3161'
ctx.fillRect(bluex, bluey, blue_width, blue_height)

# 建立畫直線函式
def draw_line(x1, y1, x2, y2, color="#ff0000"):
    ctx.beginPath()
    ctx.moveTo(x1, y1)
    ctx.lineTo(x2, y2)
    ctx.strokeStyle = color
    ctx.stroke()

# 測試畫直線函式功能
#draw_line(10, 10, 100, 100)

# 定義角度轉換為徑度變數
deg = math.pi/180.

# 建立五星繪圖函式
#x, y 為中心, r 為半徑, angle 旋轉角, solid 空心或實心, color 顏色
def star(x, y, r, angle=0, solid=False, color="#ff0000"):
    #以 x, y 為圓心, 計算五個外點
    # 圓心到水平線距離
    a = r*math.cos(72*deg)
    # a 頂點向右到內點距離
    b = (r*math.cos(72*deg)/math.cos(36*deg))*math.sin(36*deg)
    # 利用畢氏定理求內點半徑
    rin = math.sqrt(a*a + b*b)
    # 查驗 a, b 與 rin
    #print(a, b, rin)
    if solid:
        ctx.beginPath()
    # angle 角度先轉 360/10, 讓五星對正
    angle = angle + 360/10
    for i in range(5):
        xout = (x + r*math.sin((360/5)*deg*i+angle*deg))
        yout = (y + r*math.cos((360/5)*deg*i+angle*deg))
        # 外點增量 + 1
        xout2 = x + r*math.sin((360/5)*deg*(i+1)+angle*deg)
        yout2 = y + r*math.cos((360/5)*deg*(i+1)+angle*deg)
        xin = x + rin*math.sin((360/5)*deg*i+36*deg+angle*deg)
        yin = y + rin*math.cos((360/5)*deg*i+36*deg+angle*deg)
        # 查驗外點與內點座標
        #print(xout, yout, xin, yin)
        if solid:
            # 填色
            if i==0:
                ctx.moveTo(xout, yout)
                ctx.lineTo(xin, yin)
                ctx.lineTo(xout2, yout2)
            else:
                ctx.lineTo(xin, yin)
                ctx.lineTo(xout2, yout2)
        else:
            # 空心
            draw_line(xout, yout, xin, yin, color)
            # 畫空心五芒星, 無關畫線次序, 若實心則與畫線次序有關
            draw_line(xout2, yout2, xin, yin, color)
    if solid:
        ctx.fillStyle = color
        ctx.fill()

# 白色五星
white = "#FFFFFF"
# 單數排白色五星
star1x = int(blue_width/12)
star1y = int(blue_height/10)
star_radius = int(white_height*4/5/2)
# 沿 x 方向有 6 顆白色五星
# 沿 y 方向有 5 顆白色五星
inc1x = int(2*blue_width/12)
inc1y = int(2*blue_height/10)
for i in range(6):
    for j in range(5):
        star(star1x+i*inc1x, star1y+j*inc1y, star_radius, solid=True, color=white)
# 雙數排白色五星
star2x = int(blue_width/12 + blue_width/12)
star2y = int(blue_height/10 + blue_height/10)
# 沿 x 方向有 5 顆白色五星
# 沿 y 方向有 4 顆白色五星
for i in range(5):
    for j in range(4):
        star(star2x+i*inc1x, star2y+j*inc1y, star_radius, solid=True, color=white)
</script>
<script src="./../cmsimde/static/Cango-24v03-min.js"></script>
<script src="./../cmsimde/static/CangoAxes-6v01-min.js"></script>
<script src="./../cmsimde/static/gearUtils-09.js"></script>
<script src="./../cmsimde/static/SVGpathUtils-6v03-min.js"></script>
<p id="spurgear"></p>
<script type="text/python3">
# Spur Gear in Cango and gearUtils-09.js
from browser import document as doc
from browser import html
from browser import window
import browser.timer
import math
# 利用 html 建立一個 CANVAS 標註物件, 與變數 canvas 對應
canvas = html.CANVAS(width = 600, height = 400)
# 將 canvas 標註的 id 設為 "cango_gear"
canvas.id = "cango_gear"
# 將 document 中 id 為 "spurgear" 的標註
# 設為與 brython_div 變數對應
brython_div = doc["spurgear"]
# 將 canvas 標註放入 brython_div 所在位置
brython_div <= canvas
# 將頁面中 id 為 cango_gear 的 CANVAS 設為與 canvas 對應
canvas = doc["cango_gear"]
# convert Javascript objects to Brython variables
cango = window.Cango.new
circle = window.circle.new
shape = window.Shape.new
path = window.Path.new
creategeartooth = window.createGearTooth.new
svgsegs = window.SVGsegs.new
# 經由 Cango 轉換成 Brython 的 cango
# 指定將圖畫在 id="cango_gear" 的 canvas 上
cgo = cango("cango_gear")
# 以下將要使用 gearUtils-09.js 畫出正齒輪外形
# 假設齒數為 25
num = 25
# 利用 gearUtils-09 產生單一齒輪外形資料
tooth = creategeartooth(10, num, 20)
# 在 Cango 中, 只有 SVG 才能 rotate, appendPath 或 joinPath
# 將齒輪外形轉為 SVG segment
toothSVG = svgsegs(tooth)
path1 = path(toothSVG.scale(1), {"degs": 45, "x": 100, "y": 100, "strokeColor": "#606060"})
#print(path1)
# SVG list
circle = circle(50)
#print(circle)
circleSVG = svgsegs(circle)
#print(circleSVG)
# 若將 circleSVG 轉為 Cango path, 則可以用 cgo.render()
#circlePath = path(circleSVG, {"x": 100, "y": 100, "strokeColor": "#606060"})
#cgo.render(circlePath)
# svgsegs 資料可以 joinPath 或 appendPath
# joinPath 按照頭尾順序銜接
# appendPath 則無順序銜接
# 從 toothSVG 複製出單齒 SVG 資料
one = toothSVG.dup()
# 以照齒數, 逐一複製並附加在原單齒資料中
# 第一齒的資料已經在 toothSVG 中, 因此重複迴圈從 1 開始
for i in range(1, num):
    newSVG = one.rotate(360*i/num)
    toothSVG = toothSVG.appendPath(newSVG)
# 將 SVG 轉為 path 資料
#gear = path(toothSVG, {"x": 150, "y": 150, "strokeColor": "#606060"})
# path 資料可以透過 cgo.render()顯示繪圖物件
#cgo.render(gear)
# 當 circle 接外齒使用 appendPath
toothSVG = toothSVG.appendPath(circleSVG)
#print(toothSVG)
spurPath = path(toothSVG, {"x": 150, "y": 150, "strokeColor": "#606060"})
cgo.render(spurPath)
</script>
2D 動態繪圖
<p id="tetris"></p>
<script type="text/python3">
# from https://levelup.gitconnected.com/writing-tetris-in-python-2a16bddb5318
# 改為可自動執行模式
import random
# 以下為 Brython 新增
from browser import document as doc
from browser import html
import browser.timer

def intersects(game_field, x, y, game_width, game_height, game_figure_image):
    intersection = False
    for i in range(4):
        for j in range(4):
            if i * 4 + j in game_figure_image:
                if i + y > game_height - 1 or \
                        j + x > game_width - 1 or \
                        j + x < 0 or \
                        game_field[i + y][j + x] > 0:
                    intersection = True
    return intersection

def simulate(game_field, x, y, game_width, game_height, game_figure_image):
    while not intersects(game_field, x, y, game_width, game_height, game_figure_image):
        y += 1
    y -= 1

    height = game_height
    holes = 0
    filled = []
    breaks = 0
    for i in range(game_height-1, -1, -1):
        it_is_full = True
        prev_holes = holes
        for j in range(game_width):
            u = '_'
            if game_field[i][j] != 0:
                u = "x"
            for ii in range(4):
                for jj in range(4):
                    if ii * 4 + jj in game_figure_image:
                        if jj + x == j and ii + y == i:
                            u = "x"

            if u == "x" and i < height:
                height = i
            if u == "x":
                filled.append((i, j))
                for k in range(i, game_height):
                    if (k, j) not in filled:
                        holes += 1
                        filled.append((k,j))
            else:
                it_is_full = False
        if it_is_full:
            breaks += 1
            holes = prev_holes

    return holes, game_height-height-breaks

def best_rotation_position(game_field, game_figure, game_width, game_height):
    best_height = game_height
    best_holes = game_height*game_width
    best_position = None
    best_rotation = None

    for rotation in range(len(game_figure.figures[game_figure.type])):
        fig = game_figure.figures[game_figure.type][rotation]
        for j in range(-3, game_width):
            if not intersects(
                    game_field,
                    j,
                    0,
                    game_width,
                    game_height,
                    fig):
                holes, height = simulate(
                    game_field,
                    j,
                    0,
                    game_width,
                    game_height,
                    fig
                )
                if best_position is None or best_holes > holes or \
                    best_holes == holes and best_height > height:
                    best_height = height
                    best_holes = holes
                    best_position = j
                    best_rotation = rotation
    return best_rotation, best_position

# 建立一個自動執行的函式
# step 1
'''
def run_ai():
    game.rotate()
'''
#step 2
def run_ai(game_field, game_figure, game_width, game_height):
    rotation, position = best_rotation_position(game_field, game_figure, game_width, game_height)
    if game_figure.rotation != rotation:
        game.rotate()
    elif game_figure.x < position:
        game.go_side(1)
    elif game_figure.x > position:
        game.go_side(-1)
    else:
        game.go_space()

# 利用 html 建立一個 CANVAS 標註物件, 與變數 canvas 對應
canvas = html.CANVAS(width = 400, height = 500, id="canvas")
brython_div = doc["tetris"]
brython_div <= canvas
ctx = canvas.getContext("2d")

colors = [
    (0, 0, 0),
    (120, 37, 179),
    (100, 179, 179),
    (80, 34, 22),
    (80, 134, 22),
    (180, 34, 22),
    (180, 34, 122),
]


class Figure:
    x = 0
    y = 0

    figures = [
        [[1, 5, 9, 13], [4, 5, 6, 7]],
        [[4, 5, 9, 10], [2, 6, 5, 9]],
        [[6, 7, 9, 10], [1, 5, 6, 10]],
        [[1, 2, 5, 9], [0, 4, 5, 6], [1, 5, 9, 8], [4, 5, 6, 10]],
        [[1, 2, 6, 10], [5, 6, 7, 9], [2, 6, 10, 11], [3, 5, 6, 7]],
        [[1, 4, 5, 6], [1, 4, 5, 9], [4, 5, 6, 9], [1, 5, 6, 9]],
        [[1, 2, 5, 6]],
    ]

    def __init__(self, x, y):
        self.x = x
        self.y = y
        self.type = random.randint(0, len(self.figures) - 1)
        self.color = random.randint(1, len(colors) - 1)
        self.rotation = 0

    def image(self):
        return self.figures[self.type][self.rotation]

    def rotate(self):
        self.rotation = (self.rotation + 1) % len(self.figures[self.type])


class Tetris:
    level = 2
    score = 0
    state = "start"
    field = []
    height = 0
    width = 0
    x = 100
    y = 60
    zoom = 20
    figure = None

    def __init__(self, height, width):
        self.height = height
        self.width = width
        self.field = []
        self.score = 0
        self.state = "start"
        for i in range(height):
            new_line = []
            for j in range(width):
                # 起始時每一個都填入 0
                new_line.append(0)
            self.field.append(new_line)

    def new_figure(self):
        self.figure = Figure(3, 0)

    def intersects(self):
        intersection = False
        for i in range(4):
            for j in range(4):
                if i * 4 + j in self.figure.image():
                    # block 到達底部, 左右兩邊界, 或該座標有其他 block
                    if i + self.figure.y > self.height - 1 or \
                            j + self.figure.x > self.width - 1 or \
                            j + self.figure.x < 0 or \
                            self.field[i + self.figure.y][j + self.figure.x] > 0:
                        intersection = True
        return intersection

    def break_lines(self):
        lines = 0
        for i in range(1, self.height):
            zeros = 0
            for j in range(self.width):
                if self.field[i][j] == 0:
                    zeros += 1
            if zeros == 0:
                lines += 1
                for i1 in range(i, 1, -1):
                    for j in range(self.width):
                        self.field[i1][j] = self.field[i1 - 1][j]
        self.score += lines ** 2

    def go_space(self):
        while not self.intersects():
            self.figure.y += 1
        self.figure.y -= 1
        self.freeze()

    def go_down(self):
        self.figure.y += 1
        if self.intersects():
            self.figure.y -= 1
            self.freeze()

    def freeze(self):
        for i in range(4):
            for j in range(4):
                if i * 4 + j in self.figure.image():
                    self.field[i + self.figure.y][j + self.figure.x] = self.figure.color
        self.break_lines()
        self.new_figure()
        if self.intersects():
            self.state = "gameover"

    def go_side(self, dx):
        old_x = self.figure.x
        self.figure.x += dx
        if self.intersects():
            self.figure.x = old_x

    def rotate(self):
        old_rotation = self.figure.rotation
        self.figure.rotate()
        if self.intersects():
            self.figure.rotation = old_rotation

# Define some colors
# from https://stackoverflow.com/questions/3380726/converting-a-rgb-color-tuple-to-a-six-digit-code
BLACK = '#%02x%02x%02x' % (0, 0, 0)
WHITE = '#%02x%02x%02x' % (255, 255, 255)
GRAY = '#%02x%02x%02x' % (128, 128, 128)
RED = '#%02x%02x%02x' % (255, 0, 0)

done = False
fps = 5
game = Tetris(20, 10)
counter = 0

pressing_down = False

def key_down(eve):
    key = eve.keyCode
    #if event.type == pygame.QUIT:
    # 32 is pause
    if key == 32:
        done = True
    # 82 is r key to rotate
    if key == 82:
        game.rotate()
    # 40 is down key
    if key == 40:
        pressing_down = True
    # 37 is left key
    if key == 37:
        game.go_side(-1)
    # 39 is right key
    if key == 39:
        game.go_side(1)
    # 68 is d key to move block to bottom
    if key == 68:
        game.go_space()
    # 27 is escape
    # reset the game
    if key == 27:
        # clear the previous score
        ctx.fillStyle = WHITE
        ctx.fillRect( 100, 0, 200, 50)
        game.__init__(20, 10)

def key_up(eve):
    key = eve.keyCode
    # 40 is down key
    if key == 40:
        pressing_down = False

#while not done:
def do_game():
    global counter
    if game.figure is None:
        game.new_figure()
    counter += 1
    if counter > 100000:
        counter = 0
    if counter % (fps // game.level // 2) == 0 or pressing_down:
        if game.state == "start":
            game.go_down()
            run_ai(game.field, game.figure, game.width, game.height)
    
    for i in range(game.height):
        for j in range(game.width):
            ctx.fillStyle = WHITE
            #ctx.scale(game.zoom, game.zoom)
            ctx.fillRect(game.x + game.zoom * j, game.y + game.zoom * i, game.zoom, game.zoom)
            if game.field[i][j] > 0:
                ctx.fillStyle = '#%02x%02x%02x' % colors[game.field[i][j]]
                ctx.fillRect(game.x + game.zoom * j + 1, game.y + game.zoom * i + 1, game.zoom - 2, game.zoom - 1)
            ctx.lineWidth = 1
            ctx.strokeStyle = GRAY
            ctx.beginPath()
            ctx.rect(game.x + game.zoom * j, game.y + game.zoom * i, game.zoom, game.zoom)
            ctx.stroke()
    if game.figure is not None:
        for i in range(4):
            for j in range(4):
                p = i * 4 + j
                if p in game.figure.image():
                    ctx.fillStyle = '#%02x%02x%02x' % colors[game.figure.color]
                    ctx.fillRect(game.x + game.zoom * (j + game.figure.x) + 1,
                                      game.y + game.zoom * (i + game.figure.y) + 1,
                                      game.zoom - 2, game.zoom - 2)

# score and Game Over scripts from https://s40723245.github.io/wcm2022
    # 宣告文字的大小為36px
    ctx.font = '36px serif'
    # 宣告文字顏色為黑色
    ctx.fillStyle = BLACK
    # 將分數顯示在遊戲區上方, 座標為(10, 50), 並設定變數為text
    ctx.fillText('Score:'+ str(game.score), 10,50)
    
    # 宣告變數int = 1 ，如果分數大於int，則畫布清掉原本的分數填上新的得分分數
    int = 1
    if game.score >= int:
        ctx.fillStyle = WHITE
        ctx.fillRect( 100, 0, 200, 50)
        ctx.fillStyle = BLACK
        ctx.fillText(str(game.score), 108,50)
    
    # 如果遊戲狀態為gameover，顯示Game Over及Press ESC，並將文字設定為紅色
    if game.state == "gameover":
        ctx.fillStyle = RED
        ctx.fillText("Game Over", 100, 200)
        ctx.fillText("Press ESC", 105, 265)
        ctx.fillStyle = WHITE
        ctx.fillRect( 100, 0, 200, 50)
        game.__init__(20, 10)

doc.addEventListener("keydown", key_down)
doc.addEventListener("keyup", key_up)
browser.timer.set_interval(do_game, fps)
</script>
2D 機構模擬
<script src="./../cmsimde/static/sylvester.js"></script>
<script src="./../cmsimde/static/PrairieDraw.js"></script>

<p id="fourbar"></p>
<script type="text/python3">
# make canvas 600x400
from browser import document as doc
from browser import window
from browser import timer
from browser import html
import math

# 建立 fourbar canvas
canvas = html.CANVAS(width = 600, height = 400)
canvas.id = "fourbar1"
brython_div = doc["fourbar"]
brython_div <= canvas
# 準備繪圖畫布
canvas = doc["fourbar1"]

# 建立 buttons
brython_div <= html.BUTTON("啟動", id="power")
brython_div <= html.BUTTON("反向", id="reverse")

# 利用 window 擷取 PrairieDraw 程式庫變數物件, 然後以 JSConstructor 函式轉為 Brython 變數
pdraw = window.PrairieDraw.new
# 利用 window 擷取 PrairieDrawAnim 程式庫變數物件, 然後以 JSConstructor 函式轉為 Brython 變數
PrairieDrawAnim = window.PrairieDrawAnim.new

# 利用 window 擷取 sylvester 程式庫變數物件 Vector, 並將其 create 方法直接轉為 Brython 變數
# 在 sylvester 中的 $V 簡化變數無法直接在 Brython 程式中引用
vector = window.Vector.create.new
 
# 在 "fourbar" 畫布中建立 panim 動態模擬案例
panim = PrairieDrawAnim("fourbar1")

# 平面連桿繪圖以 t = 0 起始
t = 0
# 控制轉動方向變數
direction = True
 
# 繪製不同 t 時間下的平面連桿
def draw():
    global t, direction, fast
    # 設定模擬繪圖範圍
    panim.setUnits(6, 6)
    # 設定箭頭線寬
    panim.setProp("arrowLineWidthPx",2)
 
    # 起始變數設定
    omega = 1
    length_bar1 = 1
    length_bar2 = 26/18
    length_bar3 = 2
    length_base = 40/18
    time = 0
 
    # 畫出地面直線
    G = vector([0, -0.5])
    panim.ground(G, vector([0, 1]), 10)
 
    # 連桿長度與角度計算
    A = t*omega # "theta"
    AD = length_bar1 #length of left bar
    AB = length_base #distance between two stationary pivots
    BC = length_bar3 #length of right bar
    CD = length_bar2 #length of middle bar
    BD = math.sqrt(AD*AD + AB*AB - 2*AD*AB*math.cos(A))
    C = math.acos((BC*BC + CD*CD - BD*BD)/(2*BC*CD))
    ABD = math.asin(CD * math.sin(C) / BD)
    DBC = math.asin(AD * math.sin(A) / BD)
    B = ABD + DBC
    D = math.pi - B - C
 
    # draw pivot
    pivot_left = vector([AB/-2, 0])
    pivot_right = vector([AB/2, 0])
    panim.pivot(vector([pivot_left.e(1), -0.5]), pivot_left, 0.5)
    panim.pivot(vector([pivot_right.e(1), -0.5]), pivot_right, 0.5)
 
    # 儲存轉換矩陣
    panim.save()
    #FIRST BAR
    panim.translate(pivot_left)
    panim.rotate(A)
    panim.rod(vector([0,0]), vector([AD,0]), 0.25)
    panim.point(vector([0,0]))
 
    #SECOND BAR
    panim.translate(vector([AD,0]))
    panim.rotate(A*-1)  #"undo" the original A rotation
    panim.rotate(D)     #rotate by D only
    panim.rod(vector([0,0]), vector([CD,0]), 0.25)
    panim.point(vector([0,0]))
 
    #THIRD BAR
    panim.translate(vector([CD,0]))
    panim.rotate(math.pi+C)
    panim.rod(vector([0,0]), vector([BC,0]), 0.25)
    panim.point(vector([0,0]))
    # 回復原先的轉換矩陣
    panim.restore()
 
    panim.point(vector([pivot_right.e(1), 0]))
    # 時間增量
    if direction == True:
        t += 0.08
    else:
        t += -0.08
 
# 先畫出 t = 0 的連桿機構
draw()
 
# 將 anim 設為 None
anim = None
 
def launchAnimation(ev):
    global anim
    # 初始啟動, anim 為 None
    if anim is None:
        # 每 0.08 秒執行一次 draw 函式繪圖
        anim = timer.set_interval(draw, 80)
        # 初始啟動後, 按鈕文字轉為"暫停"
        doc['power'].text = '暫停'
    elif anim == 'hold':
        # 當 anim 為 'hold' 表示曾經暫停後的啟動, 因此持續以 set_interval() 持續旋轉, 且將 power 文字轉為"暫停"
        anim = timer.set_interval(draw, 80)
        doc['power'].text = '暫停'
    else:
        # 初始啟動後, 使用者再按 power, 此時 anim 非 None 也不是 'hold', 因此會執行 clear_interval() 暫停
        # 且將 anim 變數設為 'hold', 且 power 文字轉為"繼續"
        timer.clear_interval(anim)
        anim = 'hold'
        doc['power'].text = '繼續'
 
def reverse(ev):
    global anim, direction
    # 當 anim 為 hold 時, 按鈕無效
    if anim != "hold":
        if direction == True:
            direction = False
        else:
            direction = True
 
doc["power"].bind("click", launchAnimation)
doc["reverse"].bind("click", reverse)
</script>

電腦輔助設計與實習課程核心
----

CAD 課程的重點是利用電腦輔助設計套件進行產品設計, 而 KMOLab 所使用的套件包含 Siemens NX, Solvespace 與 Onshape, 機電模擬系統則採用 CoppeliaSim.

[下載 NX2027 lite 可攜版本]

[下載 Solvespace 3.1 版 for Windows]

[下載 CoppeliaSim 4.3.0 rev12]

在 [Onshape] 建立教育版帳號.

[下載 NX2027 lite 可攜版本]: https://nfuedu.sharepoint.com/:u:/s/cad2022/EclS-NMhqJ9JvCa-pIQ_jMsBOLhmGLdxH5xv7JH8CHQMug?e=SMFg8L
[下載 Solvespace 3.1 版 for Windows]: https://github.com/solvespace/solvespace/releases/download/v3.1/solvespace.exe
[Onshape]: https://www.onshape.com/en/education/
[下載 CoppeliaSim 4.3.0 rev12]: https://nfuedu.sharepoint.com/:u:/s/cad2022/EWdB5MhlZRJKjt5UiNRebR8BXb3xB2g0Bbg0JZHSNqpmLA?e=h5cEIV

因為電腦輔助設計與實習課程承接先前以 Brython 及 Python 為核心的計算機程式課程, 因此透過 [python-solvespace] 可以解 2D 設計約束條件, [Python for NX] 可以利用 [NXOpen 中的 Python API] 處理零組件設計, 利用 [Onshape-clients] 也能與 [Onshape] 零組件進行延伸互動. 當零組件設計繪圖完成後轉入 CoppeliaSim, 則可以利用 [Python remote API] 執行控制系統設計. 最終將完成的零組件設計與前述網站結合則除了透過 [threejsFrontend] 外, 也可自行利用 [Pyweb3d] 完成.

[python-solvespace]: https://pypi.org/project/python-solvespace/
[Python for NX]: https://mde.tw/content/Python%20for%20NX.html
[Onshape-clients]: https://github.com/onshape-public/onshape-clients
[NXOpen 中的 Python API]: https://docs.plm.automation.siemens.com/data_services/resources/nx/12/nx_api/custom/en_US/nxopen_python_ref/index.html
[Python remote API]: https://www.coppeliarobotics.com/helpFiles/en/remoteApiFunctionsPython.htm
[Pyweb3d]: https://github.com/mdecycu/pyweb3d
[threejsFrontend]: https://github.com/CoppeliaRobotics/threejsFrontend

cmsimde
====

[cmsimde] 是一套利用 Python 與 Flask 建立的網際內容管理系統. 利用 [cmsimde] 與 Github Classroom 配置使用者網站的複雜度, 其中大部分來自電腦輔助設計室的網路環境與自架伺服器都只部署在純 [IPv6] 的網路環境中. 其實 [IPv6] 網路協定早在 1995 年便已推出, 但台灣至今的 [IPv6] 的[網路部署]也僅達到將近 50%. 就連 github.com 截至目前的 git clone 與 git push 都還僅支援 IPv4. 因此在僅有 IPv4 的網路環境下, 或僅有 IPv6 的電腦輔助設計室與自架伺服器的各別協定使用, 都必須選擇性設定雙網路協定的代理主機.

上課時段將電腦輔助設計室直接連結到系主幹的目的, 是為了取得最大對外連線頻寬, 且避開許多錯誤設定的 IPv4 伺服器所造成的網路封包阻絕效應. 但其結果就是必須在純 IPv6 的網路環境中工作, 而當學員回到宿舍或其他網路連線條件下, 又幾乎都在 IPv4 的網路協定下工作, 為因應這兩種互不相容的網路環境, 最佳的設定就是使用兩套可攜的隨身系統, 分別在不同網路協定下運用. 

道理雖然簡單, 但由於其他課程並未觸及 IPv6, 且即便在中華電信的網路連線下, 也並非全時提供 IPv6 網路環境, 因此造成許多初學者使用 cmsimde 網站與 Github 倉儲上的諸多困難.

要克服網路與電腦使用上的諸多問題, 唯一的方法就是先了解基本原理, 然後再逐步依照教學流程設定後, 仔細比對網路連線原理, 多多針對不同使用情境加以調適練習就可逐步熟悉各種設定細節.

使用 [cmsimde] 建立網站的另外一項瓶頸也來自子模組的使用, 最早將 [cmsimde] 用於 Github 倉儲與網站設定的背景是, 各使用者可以在既有 [cmsimde] 子模組的架構下, 透過 user.py 採 [Blueprints] 延伸各種網際內容管理或電腦輔助設計前後端流程的功能. 但隨著 Github Classroom、 MS Teams 與多種 CAD 套件的導入, 延伸程式的編寫門檻越堆越高, 這幾年的課程即便推展至 KMOLab 的協同產品設計課程, 進度也難以觸及 user.py 的範圍.

尤其最近幾年的手機軟硬體功能已經足以與電腦並駕齊驅, 將手機與平板的應用導入課程已經是必然的趨勢, 因此接下來必須進一步思考是否重新架構 cmsimde 與學員個人倉儲及網站的配置, 刪除子模組的配置, 直接以 cmsimde 目錄導入, 如此至少可以免除 ssh 與 https 網路協定的雙重設定, 以降低配置上的複雜度.

[cmsimde]: https://github.com/mdecycu/cmsimde
[IPv6]: https://en.wikipedia.org/wiki/IPv6
[網路部署]: https://ipv6now.twnic.tw/ipv6/index.html
[Blueprints]: https://flask.palletsprojects.com/en/2.2.x/blueprints/

stud.cycu.org
====

2022 Fall 由於 Heroku 取消免費帳號的使用, 且 Replit 的免費帳號資源過少, 導致在廣域網路上必須自行配置所有學員的動態網站伺服器, 也就是 stud.cycu.org 主機的啟用與配置.

為了讓兩百多名學員能在同一台伺服器上執行動態網站, 各學員必須遠端登入伺服器使用 shell script 指令, 並以 Filezilla 的 sftp 降低學員對 Linux 指令不熟悉所造成的檔案編輯與配置問題. 其中用來查核個人是否啟動 python3 server.py 的 ps 指令為 ps axo pid,comm,user | grep "server.py" 只是 Quota 與 port 使用權限的配置仍需進一步思考最佳管理模式.

TCExam
====

2022 Fall 重啟線上考試後, 重新啟用 TCExam, 目前正朝讓各學員自行出複選題目建立題庫的可行性.


