<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="leo.20221113200434.1"><vh>@settings</vh>
<v t="leo.20221113200434.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="leo.20221113200434.3"><vh>@string initial_split_orientation = horizontal</vh></v>
<v t="leo.20221113200444.1"><vh>@data import-xml-tags</vh></v>
</v>
<v t="leo.20221113200746.1"><vh>cad2022_NX-part 考試題目</vh>
<v t="leo.20221113200746.2"><vh>@clean tcexam_cad2022_NX-part.xml</vh>
<v t="leo.20221113215004.1"><vh>&lt;body&gt;</vh>
<v t="leo.20221113215004.2"><vh>&lt;module&gt;</vh>
<v t="leo.20221113215004.3"><vh>&lt;subject&gt;</vh>
<v t="leo.20221113215004.4"><vh>&lt;question&gt;</vh>
<v t="leo.20221113215004.5"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.6"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.7"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.8"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.9"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.10"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.11"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.12"><vh>&lt;answer&gt;</vh></v>
</v>
<v t="leo.20221113215004.13"><vh>&lt;question&gt;</vh>
<v t="leo.20221113215004.14"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.15"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.16"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.17"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.18"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.19"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.20"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.21"><vh>&lt;answer&gt;</vh></v>
</v>
<v t="leo.20221113215004.22"><vh>&lt;question&gt;</vh>
<v t="leo.20221113215004.23"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.24"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.25"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.26"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.27"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.28"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.29"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.30"><vh>&lt;answer&gt;</vh></v>
</v>
<v t="leo.20221113215004.31"><vh>&lt;question&gt;</vh>
<v t="leo.20221113215004.32"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.33"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.34"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.35"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.36"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.37"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.38"><vh>&lt;answer&gt;</vh></v>
<v t="leo.20221113215004.39"><vh>&lt;answer&gt;</vh></v>
</v>
</v>
</v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20221113200434.1"></t>
<t tx="leo.20221113200434.2">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="leo.20221113200434.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="leo.20221113200444.1">explanation
enabled
difficulty
description
isright
subject
auto_next
timer
header
keyboard_key
answer
type
inline_answers
question
name
module
body
fullscreen
position
tcexamquestions</t>
<t tx="leo.20221113200746.1"></t>
<t tx="leo.20221113200746.2">&lt;?xml version="1.0" encoding="UTF-8" ?&gt;
&lt;tcexamquestions version="14.8.5
"&gt;
&lt;header lang="en" date="2022-11-10 14:01:13"&gt;&lt;/header&gt;
@others
&lt;/tcexamquestions&gt;
@language xml
@tabwidth -4
</t>
<t tx="leo.20221113215004.1">&lt;body&gt;
    @others
&lt;/body&gt;
</t>
<t tx="leo.20221113215004.10">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;NX 為 Siemens 公司旗下的高階電腦輔助設計與繪圖套件, 同公司的雲端電腦輔助設計套件為 Onshape.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.11">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;NX 是一套高階電腦輔助設計與繪圖套件, 同一個公司的中階電腦輔助設計與繪圖套件為通用全球的 SolidWorks.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.12">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;2022 電腦輔助設計與實習課程在第六週時, 要求學員利用 NX 練習繪圖後, 要利用 Wink2 製作過程影片.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.13">&lt;question&gt;
&lt;enabled&gt;true&lt;/enabled&gt;
&lt;type&gt;multiple&lt;/type&gt;
&lt;difficulty&gt;1&lt;/difficulty&gt;
&lt;position&gt;&lt;/position&gt;
&lt;timer&gt;0&lt;/timer&gt;
&lt;fullscreen&gt;false&lt;/fullscreen&gt;
&lt;inline_answers&gt;false&lt;/inline_answers&gt;
&lt;auto_next&gt;false&lt;/auto_next&gt;
&lt;description&gt;請根據電腦輔助設計課程所使用的 Onshape 套件, 選出下列正確的敘述.&lt;/description&gt;
&lt;explanation&gt;&lt;/explanation&gt;
@others
&lt;/question&gt;
</t>
<t tx="leo.20221113215004.14">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;Onshape 目前的母公司名稱為 PTC.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.15">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;Onshape 使用者可以分別從 Edge, Firefox 與 Chrome 瀏覽器中登入使用.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.16">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;從[url=https://en.wikipedia.org/wiki/Onshape]這裡[/url]可以清楚了解, 其實 Onshape 的開發團隊領導者, 就是當年籌組開發 SolidWorks 的團隊領導者.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.17">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;Onshape 可從手機的 APP 中登入.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.18">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;Onshape 其實就是 SolidWorks 的雲端版本.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.19">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;Onshape 是一套全雲端電腦輔助設計與繪圖套件, 但一定要在 Windows 操作系統中, 才能夠使用.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.2">&lt;module&gt;
    &lt;name&gt;cad2022&lt;/name&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    @others
&lt;/module&gt;
</t>
<t tx="leo.20221113215004.20">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;使用 Onshape 之前, 一定要先申請 Replit 帳號, 並且設法將兩者資料同步之後才可使用.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.21">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;使用 Onshape 之前, 正如 w6 課程中所述, 必須先下載 Filezilla 後才能夠使用.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.22">&lt;question&gt;
&lt;enabled&gt;true&lt;/enabled&gt;
&lt;type&gt;multiple&lt;/type&gt;
&lt;difficulty&gt;1&lt;/difficulty&gt;
&lt;position&gt;&lt;/position&gt;
&lt;timer&gt;0&lt;/timer&gt;
&lt;fullscreen&gt;false&lt;/fullscreen&gt;
&lt;inline_answers&gt;false&lt;/inline_answers&gt;
&lt;auto_next&gt;false&lt;/auto_next&gt;
&lt;description&gt;請選出下列正確的敘述.&lt;/description&gt;
&lt;explanation&gt;&lt;/explanation&gt;
@others
&lt;/question&gt;
</t>
<t tx="leo.20221113215004.23">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EYwM58N47vREqy_MPP34k-EBXjjay3JM7Vbo8OLlMu4Cxw?e=s4bbAR]這個零件[/url]其中一個關鍵尺寸為 100mm.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.24">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EYwM58N47vREqy_MPP34k-EBXjjay3JM7Vbo8OLlMu4Cxw?e=s4bbAR]這個零件[/url]使用了公制作為繪圖尺寸.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.25">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EYwM58N47vREqy_MPP34k-EBXjjay3JM7Vbo8OLlMu4Cxw?e=s4bbAR]這個零件[/url]其中一個關鍵尺寸為 255mm.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.26">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EYwM58N47vREqy_MPP34k-EBXjjay3JM7Vbo8OLlMu4Cxw?e=s4bbAR]這個零件[/url]其中一個關鍵尺寸為 340mm.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.27">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EYwM58N47vREqy_MPP34k-EBXjjay3JM7Vbo8OLlMu4Cxw?e=s4bbAR]這個零件[/url] 是一個圓形球體.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.28">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EYwM58N47vREqy_MPP34k-EBXjjay3JM7Vbo8OLlMu4Cxw?e=s4bbAR]這個零件[/url]其中一個關鍵尺寸為 200mm.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.29">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EYwM58N47vREqy_MPP34k-EBXjjay3JM7Vbo8OLlMu4Cxw?e=s4bbAR]這個零件[/url] 是一個正齒輪.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.3">&lt;subject&gt;
&lt;name&gt;NX-part&lt;/name&gt;
&lt;description&gt;與 NX2027 有關的題目&lt;/description&gt;
&lt;enabled&gt;true&lt;/enabled&gt;
@others
&lt;/subject&gt;
</t>
<t tx="leo.20221113215004.30">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EYwM58N47vREqy_MPP34k-EBXjjay3JM7Vbo8OLlMu4Cxw?e=s4bbAR]這個零件[/url] 是一個圓柱體.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.31">&lt;question&gt;
&lt;enabled&gt;true&lt;/enabled&gt;
&lt;type&gt;multiple&lt;/type&gt;
&lt;difficulty&gt;1&lt;/difficulty&gt;
&lt;position&gt;&lt;/position&gt;
&lt;timer&gt;0&lt;/timer&gt;
&lt;fullscreen&gt;false&lt;/fullscreen&gt;
&lt;inline_answers&gt;false&lt;/inline_answers&gt;
&lt;auto_next&gt;false&lt;/auto_next&gt;
&lt;description&gt;請選出下列正確的敘述..&lt;/description&gt;
&lt;explanation&gt;&lt;/explanation&gt;
@others
&lt;/question&gt;
</t>
<t tx="leo.20221113215004.32">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EeAeYRqZ9KRMsy20Mgxcb7cB2QZkI1iPkBTaGOe7QsjCnA?e=7Lm9mF]這個零件檔案[/url]中心圓孔直徑為 46mm.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.33">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EeAeYRqZ9KRMsy20Mgxcb7cB2QZkI1iPkBTaGOe7QsjCnA?e=7Lm9mF]這個零件檔案[/url]中心圓孔高度為 32.5mm.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.34">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EeAeYRqZ9KRMsy20Mgxcb7cB2QZkI1iPkBTaGOe7QsjCnA?e=7Lm9mF]這個零件檔案[/url]其中一個倒圓角的半徑為 5mm.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.35">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EeAeYRqZ9KRMsy20Mgxcb7cB2QZkI1iPkBTaGOe7QsjCnA?e=7Lm9mF]這個零件檔案[/url]為一個圓球體.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.36">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EeAeYRqZ9KRMsy20Mgxcb7cB2QZkI1iPkBTaGOe7QsjCnA?e=7Lm9mF]這個零件檔案[/url]為一個正方體.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.37">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EeAeYRqZ9KRMsy20Mgxcb7cB2QZkI1iPkBTaGOe7QsjCnA?e=7Lm9mF]這個零件檔案[/url]中心圓孔高度為 32mm.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.38">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EeAeYRqZ9KRMsy20Mgxcb7cB2QZkI1iPkBTaGOe7QsjCnA?e=7Lm9mF]這個零件檔案[/url]其中一個倒圓角的半徑為 3mm.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.39">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;false&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;以 NX2027 建立的[url=https://nfuedu.sharepoint.com/:u:/s/cad2022/EeAeYRqZ9KRMsy20Mgxcb7cB2QZkI1iPkBTaGOe7QsjCnA?e=7Lm9mF]這個零件檔案[/url]中心圓孔直徑為 48mm.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.4">&lt;question&gt;
&lt;enabled&gt;true&lt;/enabled&gt;
&lt;type&gt;multiple&lt;/type&gt;
&lt;difficulty&gt;1&lt;/difficulty&gt;
&lt;position&gt;&lt;/position&gt;
&lt;timer&gt;0&lt;/timer&gt;
&lt;fullscreen&gt;false&lt;/fullscreen&gt;
&lt;inline_answers&gt;false&lt;/inline_answers&gt;
&lt;auto_next&gt;false&lt;/auto_next&gt;
&lt;description&gt;請根據電腦輔助設計課程所使用的 NX 套件, 選出下列正確的敘述.&lt;/description&gt;
&lt;explanation&gt;&lt;/explanation&gt;
@others
&lt;/question&gt;
</t>
<t tx="leo.20221113215004.5">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;2022 電腦輔助設計與實習課程使用 NX 套件的原因之一, 是因為可以利用 NXOpen Python API, 建立輔助設計延伸程式, 此舉正好可與大一的計算機程式課程互相呼應.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.6">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;NX 為 Siemens 公司旗下的高階電腦輔助設計與繪圖套件, 同公司的中階電腦輔助設計與繪圖套件為 Solid Edge.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.7">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;2022 電腦輔助設計與實習課程所選用的 NX 版本為 2027 版.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.8">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;2022 電腦輔助設計與實習課程從第六週開始, 要求學員利用 NX 練習繪圖的零組件檔案, 下載之後的檔案名稱為 drill_press.7z.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
<t tx="leo.20221113215004.9">&lt;answer&gt;
    &lt;enabled&gt;true&lt;/enabled&gt;
    &lt;isright&gt;true&lt;/isright&gt;
    &lt;position&gt;&lt;/position&gt;
    &lt;keyboard_key&gt;&lt;/keyboard_key&gt;
    &lt;description&gt;2022 電腦輔助設計與實習課程在第六週時, 要求學員利用 NX 練習繪圖後, 要將練習內容與結果放在個人網站上 H1 格式頁面, 且頁面標題要求為 w6.&lt;/description&gt;
    &lt;explanation&gt;&lt;/explanation&gt;
&lt;/answer&gt;
</t>
</tnodes>
</leo_file>
