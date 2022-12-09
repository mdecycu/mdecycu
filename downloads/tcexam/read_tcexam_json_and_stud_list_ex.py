import ast
from browser import document, html, bind

brython_div = document["brython_div1"]
# create a button using html 
brython_div <= html.BUTTON("輸入 cname, url", id="get_cname")

class quiz:
    def __init__(self, cname, url):
        self.cname = cname
        self.url = url

    # 定義一個函式, 以班級代號字串作為輸入, 可以傳回各班修課學員的學號數列
    def get_stud(self):
        # 將課程的班級代號字串作為 dict 的 key, 而 2022 fall 的課程代號作為對應值
        # 使用者可以利用班級代號從 courses dict 取出課程代號
        courses = {"1a": "0747", "1b": "0761", "2a": "0773", "2b": "0786"}
        # 利用 c_name 從 courses 得到該學期的課程代號
        c = courses[self.cname]
        # 利用課程代號從學校教務主機取的該班修課人員名單
        curl = "https://nfu.cycu.org/?semester=1111&courseno=" + c + "&column=True"
        # 讀出各修課人員資料後, 以跳行符號切割, 得到的 data 為數列
        data = open(curl).read().split("\n")
        # 因為最後一筆資料為空字串, 因此利用數列運算將其去除
        stud = data[:-1]
        # get_stud() 函式最後將對應班級的修課人員學號以數列格式傳回
        return stud
        
    def get_score(self):
        # 利用 open() 與 read() 讀取考試結果 JSON 檔案
        json_data = open(self.url).read()
        # 利用 ast.literal_eval() 將字串 dict, 轉為程式可用的 dict 資料型別
        big_dict = ast.literal_eval(json_data)
        # 從 big_dict 中, 取出 body 中的 testuser 欄位資料
        data = big_dict["body"]["testuser"]
        # 定義一個空 dict 資料變數, 隨後利用迴圈逐一將學號作為 key, 考試成績為 valude
        # 組成 quiz_dict 的資料內容, 以便之後可以用學號當作輸入, 取得該員考試成績
        quiz_dict = {}
        for i in data:
            # data 資料中的 user_name 為考試學員的帳號, 也就是學號
            stud_id = data[i]["user_name"]
            # data 資料中的 total_score 欄位為考試成績
            # 因為考試成績為字串, 先轉為浮點數後, 再轉為整數
            stud_score = int(float(data[i]["total_score"]))
            # 逐一以學號為 key, 考試成績為對應 value, 將資料放入 quiz_dict
            quiz_dict[stud_id] = stud_score
        # 取得各學員的考試成績 quiz_dict 後, 將資料傳回
        return quiz_dict

def gen_result(stud, score):
    abs_num = 0
    for i in stud:
        brython_div <= i + ":"
        try:
            s = score[i]
        except:
            s = "缺考"
            abs_num += 1
        brython_div <= s
        brython_div <= html.BR()
    brython_div <= "總計有 " + str(abs_num) + "人缺考"
    
@bind(document["get_cname"], 'click')
def get_cname(env):
    user_input = input("請輸入 cname,url")
    cname_url =  user_input.split(",")
    cname = cname_url[0]
    url = cname_url[1]
    data = quiz(cname, url)
    stud = data.get_stud()
    score = data.get_score()
    # 以 stud, score 為輸入, 列出展示用的超文件結果
    gen_result(stud, score)

