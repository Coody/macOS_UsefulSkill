# macOS 好用技巧
很多剛踏入 Mac 的使用者會問我，macOS 為何有點難用，我覺得問題應該出在：你不曉得有哪些技巧讓他變成「適合你的」作業系統，如果你懂這些技巧，你就可以在自己電腦上面工作、生活達到事半功倍的效果，不管是檔案管理、快速切換工作視窗、自動化工作項目、 shell script、然後再來我會介紹一些好用的第三方軟體來提升工作效率。

所以這篇文章主要是我玩了 mac 那麼多年的一點心得跟記錄，希望能幫助到大家。

## 第三方軟體

* [Launcher](https://itunes.apple.com/tw/app/launcher/id402270706?l=zh&mt=12)：
	* 這軟體絕對能提昇你工作效率至少 100%，不管是快速打開網址、快速查詢各種資料（透過 google , youtube 等等，可以自設快捷鍵定義），或是茶英文單字、算數（連三角函數跟 pi 都可以）。

* [Evom](http://thelittleappfactory.com)，影片直轉 MP3 的免費軟體：
	* 這裡補個小技巧，將此軟體拉到 Finder 上方，每次將影片用拖拉即可轉成 MP3。
	
	![Evom_1.png](Evom/Evom_1.png)
	
	拖拉過去放掉以後，就會出現如下圖：
	
	![Evom_2.png](Evom/Evom_2.png)
	
	就可以轉成 mp3 了。
	* PS：如何將應用程式拖拉到工具列上，很簡單，只要你在拖拉應用程式的時候，按下 command 鍵（不要放）然後拖拉到上方 Bar 就會看到應用程式旁邊多一個 + 號，放掉即可固定在 Finder 上方，然後再自行調整適當位置。

* [Go2Shell](https://itunes.apple.com/tw/app/go2shell/id445770608?l=zh&mt=12):快速在此資料夾打開「終端機」(Terminal)：
	* 如何快速開啟 AppStore 上面的圖片已經說明的很清楚了wwwwww（就用上面所提的固定應用程式到 Finder 的方式即可）


## 技巧

* Dock 分類放（使用空格技巧）：
	* 開啟「終端機」(Terminal)後鍵入 ```defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'``` ，按下 Enter 後，在輸入第二個指令 ```killall Dock``` ，即可發現你多了一個「可以拖拉」的空格在 Dock 上，這個方式可以讓你把同樣性質的 App 集中放，讓你工作時找 Dock 上的 App 更快速！底下是我分類的圖式：
	
	![Dock_1.png](Dock/Dock_1.png)
	
* 微調聲音： ```alt + shift + F11 or F12``` ，可以微調聲音（平常的 1/4 ）

* 螢幕截圖： ```command + shift + 3``` 整個螢幕截圖；```command + shift + 4``` 選取範圍截圖。

## Automator 自動化機器人用法

待補

## Issue

* USB displayLink 發生 macOS 瘋狂寫入 log ，造成 CPU 滿載問題，請服用這資料夾下的 ```stopWindowServerLog.sh``` ，點擊兩下，輸入你帳號的密碼（因為是 sudo 命令）即可。

	```
	# 內部指令
	# show WindowServer log pid
	pidString=`ps -A | grep WindowServer`
	echo $pidString
	
	# stop WindowServer warning log
	PID=`pgrep -f WindowServer`
	sudo log config --process=$PID --mode "level:off"
	```
