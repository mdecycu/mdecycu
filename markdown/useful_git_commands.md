---
Title: Git 常用指令
Date: 2022-08-28 11:00
Category: git
Tags: remote-add, recurse-submodules
Slug: useful-git-commands
Author: mdecycu
---

根據使用情境將常用的 git 指令加以整理.

<!-- PELICAN_END_SUMMARY -->

remote add
====

git remote add 的使用情境是希望將某一個倉儲的完整歷程資料, 改存至另一個倉儲.

假設原來的 cad2021_final 倉儲位於 mdecourse 帳號下, 現在想要將此倉儲的完整歷程資料, 轉存至 mdecycu 帳號下.

先前準備: 要先在近端電腦設定好 mdecourse 與 mdecycu 對 git 的 [SSH 公私鑰簽章設定]. 且 mdecourse 對應的 putty session 為 github.com, 而 mdecycu 對應的 putty session 為 mdecycu.

[SSH 公私鑰簽章設定]: https://mde.tw/content/Token%20and%20SSH.html#ssh

步驟一:  登入 github.com mdecycu 帳號, 建立一個空的 cad2021_final 倉儲, 也就是連 README.md 都先不加入的完全空的倉儲.

步驟二: 將 cad2021_final 從 mdecycu 帳號下, git clone 至近端電腦.

git clone --recurse-submodules git@github.com:mdecourse/cad2021_final.git

因為 cad2021_final 倉儲在 mdecourse 帳號下設為 private, 因此需要透過 putty session github.com, 利用近端的 puttygen 所建立的 .ppk private key 與 github 上 OpenSSL 格式的 public 對應下, 才能夠透過 ssh 協定取下 cad2021_final 倉儲.

步驟三: cd 至 cad2021_final 倉儲目錄, 以 git remote add 設定代號, 並對應至 mdecycu 帳號下的同名倉儲.

git remote add mdecycu git@mdecycu:mdecycu/cad2021_final.git

其中的 git remote add 為指令, 表示要加入一個遠端的連結代號, 而此代號名稱為 mdecycu, 隨後的 git@ 表示要利用 ssh 協定, 以 git 作為登入帳號, @ 後面的 mdecycu 為近端 putty 的 session 名稱, 而 :mdecycu 中的 mdecycu 則是 github 系統下的 mdecycu 帳號用戶名稱, /cad2021_final.git 則為先前已經建立的空倉儲.

步驟四: 將 cad2021_final 倉儲內容, 以 git push 推送到 mdecycu 帳號下.

git push mdecycu

recurse-submodules
====

當使用 git clone 倉儲時, 之所以要宣告 --recurse-submodules 選項命令, 是針對該倉儲的所有子模組, 包括子模組下的所有子模組, 也要同時取下.

submodule add
====

git submodule add 隨後要加入 URL 指向某一倉儲, 表示要將該倉儲設為子模組, 然後指令還要再加上該子模組連結的對應代號.

git submodule add https://github.com/mdecycu/cmsimde.git cmsimde

表示要將 cmsimde 倉儲設為子模組, 且放入 cmsimde 目錄中.