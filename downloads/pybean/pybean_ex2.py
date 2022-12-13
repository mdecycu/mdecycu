#coding: utf-8
from pybean import Store, SQLiteWriter
# "frozen=True" means the SQLiteWriter won't create tables and columns on the fly
# 使用 frozen = False 表示可以動態建立資料表
library = Store(SQLiteWriter("database.sqlite", frozen=False))
# 建立  book 資料 bean, 也就是建立一個名稱為 book 的資料表
book = library.new("book")
# 動態建立 book 資料表中的 title 欄位, 且將字串值放入此一 book 資料表中的 title 欄位
book.title = "第一本書的標題"
# 再動態建立 author 欄位, 且將字串值放入此一 author 欄位
book.author = "第一本書的作者"
# 儲存資料表 book 中的資料
library.save(book)
# 利用資料庫檔案中的 find 方法搜尋 book 資料表, 找出其中 author 欄位值有 "Charles Xavier" 字串的資料
for book in library.find("book","author like ?",["第一本書的作者"]):
    # 若找到對應資料, 印出 book 資料表中 title 欄位的資料
    print (book.title)
# 找出資料表中的所有資料
# find all books, find method returns an iterator
print(library.find("book"))
print(library.find("book","1"))
for book in library.find("book","1"):
    print (book.title)
# 再建立 bean 與輸入資料值
# 建立  book 資料 bean, 也就是建立一個名稱為 book 的資料表
book = library.new("book")
# 動態建立 book 資料表中的 title 欄位, 且將字串值放入此一 book 資料表中的 title 欄位
book.title = "這是書的標題"
# 再動態建立 author 欄位, 且將字串值放入此一 author 欄位
book.author = "書的作者"
# 儲存資料表 book 中的資料
library.save(book)
number_of_books = library.count("book")
number_of_書_books = library.count("book", "author like ?", ["書的作者"])
print(number_of_books,number_of_書_books)
# 刪除此一 book 資料表內容 (請注意 book 為對應 book = library.new("book") 之後的內容資料
library.delete(book)
number_of_books = library.count("book")
number_of_書_books = library.count("book", "author like ?", ["書的作者"])
print(number_of_books,number_of_書_books)
for book in library.find("book"):
    print (book.title, book.author)
# 這是 pybean 0.2.1 版的新用法, 將各資料存取流程中所用的 commit, 集中到最後 save 與 delete 時才統一 commit, 此舉提升 pybean 0.2.1 版本的運行速度　
library.commit()