# 導入 pybean 模組與所要使用的 Store 及 SQLiteWriter 方法
from pybean import Store, SQLiteWriter
# 利用 Store  建立資料庫檔案對應物件, 並且設定 frozen=False 表示要開放動態資料表的建立
library = Store(SQLiteWriter("database2.sqlite", frozen=False))
# 動態建立 book 資料表
book = library.new("book")
# 動態建立 title 欄位
book.title = "如何使用 Pybean 儲存資料"
# 動態建立 author 欄位
book.author = "Pybean 作者群"
# 儲存資料表內容
library.save(book)
# 當資料庫內容有變更時, 必須要執行 commit() 才會有作用
library.commit()

# 資料查詢
for book in library.find("book","author like ?",["Pybean 作者群"]):
    # 列印資料表中的 title 欄位
    print (book.title)
        
# 計算資料查詢筆數
搜尋資料筆數 = library.count("book", "1 order by author")
print(搜尋資料筆數)

# 資料更新
# 以 find_one 找出所要更新的一筆資料
一筆資料 = library.find_one("book","author=?",["Pybean 作者群"])
# 針對所搜尋出的一筆資料進行修改
一筆資料.author = "修改後的資料"
# 將修改後的一筆資料存入資料表中
library.save(一筆資料)
# 執行上述資料變更
library.commit()

# 再新增一筆資料
book.title = "如何使用 Pybean 儲存資料"
book.author = "Pybean 作者群"
# 儲存資料表內容
library.save(book)
# 當資料庫內容有變更時, 必須要執行 commit() 才會有作用
library.commit()

# 資料刪除
# 以 find_one 找出所要刪除的一筆資料
一筆資料 = library.find_one("book","author=?",["Pybean 作者群"])
# 針對所搜尋出的一筆資料進行刪除
library.delete(一筆資料)
# 執行上述資料刪除
library.commit()
