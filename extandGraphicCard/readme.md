# macOS 10.12.6 安裝外接顯卡分享（顯卡 Radeon RX 560 ）

* __免責聲明！__ 雖然說 macOS 10.13 發佈前的 10.12 ，Apple 就已經偷偷釋出 AMD Radeom 系列的顯卡支援，但任何更動都必須要以 Apple 的修正以及公布為主。為何會想要外接顯卡呢？由於我目前的主力 mac 為 Macbook Pro 15" 2012 非 Retina ，他只有一個外接顯示器接口（ Thunderbolt 1 & mini display port 在同一個孔），為了讓我的老 mac 能夠顯示多台顯示器，且不延遲顯示畫面（如果使用 USB display link 不只顯示會延遲，光一般的瀏覽器都有可能會造成崩潰；且有很多 OS 上引發的問題，詳見「 macOS 好用技巧」內最下方的 Issue ，可以查到相關問題以及解決方法。），在不想要換一台新的 mac 的情況下，折衷方法就是外接顯卡便可以接多台顯示螢幕，且還保有這些硬體未來可以轉手賣掉或是擴充成 pc ，甚至 mac 也可以玩遊戲了！

* 所以準備好了嗎？我們開始吧！！

### 所需要的軟體、硬體

* macOS 10.12.3 以上
* mac 硬體要有 Thunderbolt （1,2,3 皆可）（我的機器是 2012 macbook pro 15" Thunderbolt 1 ）。至於要如何確認你的 mac 有 Thunderbolt 呢？很簡單，只要你的接口處，有個 ![閃電](Thunderbolt.png)閃電的符號，那就表示是 Thunderbolt ，至於是 Thunderbolt 1 還是 2 ，那就要上 [Apple 的網站](https://support.apple.com/zh-tw/HT204154) 去查詢了。（Thunderbolt 3 是橢圓造型，所以很容易分辨。）
*
* 一個 Thunderbolt + PCIe 設備，如：[Akitio 的雷霆 PCIe 轉接盒](http://www.akitio.com.tw/accessories/thunder2-pcie-box)（可以不用高瓦數電源供應器，廠商說明內說不能外接顯卡，但是經過測試是 OK 的，但要另外買一個 350W 以上的電源供應器）
* 如果你買的 PCIe 不包含電源供應器，則必須自己去買一個，最好 350W 以上的。
* 迴紋針（讓電源供應器不用透過主機板也可以 run 起來）。
* 到 [eGPU](https://github.com/goalque/automate-eGPU) 將該專案下載回來（重要！）。
* 後續需要關掉 LED 螢幕（因為筆電的 LED 螢幕無法使用外接顯卡，因為顯卡的資訊如果透過 Thunderbolt 傳回來會影響傳輸量），請下載 [DisableMonitor](https://github.com/Eun/DisableMonitor) ，先留著，等安裝完外接顯卡後要使用。

### 從硬體開始

* 

### 相關連結
* [eGPU 指令](https://github.com/goalque/automate-eGPU)
* [DisableMonitor](https://github.com/Eun/DisableMonitor)
* [eGPU.io](https://egpu.io/setup-guide-external-graphics-card-mac/)：如果你不曉得自己的硬體、或是 PCIe 硬體是否可行，可以參考此篇文章，裡面有很多外國人的分享他們他們的經驗。