---
Title: 2022 Fall 課程
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

由於 Siemens NX 套件的 NXOpen 程式延伸架構允許利用 Python 程式編寫 API 程式, 因此就網站前端的程式語言選擇, 並非直接使用 Javascript, 而是採用 Brython. 也就是使用者可以在網頁上編寫 Python 格式的 Brython 程式, 主為 Javascript 後執行. 至於後端則使用 CPython + Flask 設法與 NX 、Solvespace 及 Coppeliasim 進行互動.

2022 Fall 各學員的網站倉儲採用 Github Classroom 配置, 也就是讓各學員的個人課程倉儲位於計算機程式 (cp2022) 與電腦輔助設計實習 (cad2022) 的 organization 代號下: mdecp2022 與 mdecad2022.
