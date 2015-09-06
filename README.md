# package-atom-tongwen

## Atom 繁簡轉換 - 使用新同文堂(TongWen)

這個Package的功能，主要是提供「[Atom](https://github.com/atom/atom)」，用來做文字的繁簡轉換。
「繁簡轉換的核心」，來自「[新同文堂](https://github.com/softcup/New-Tongwentang-for-Web/blob/master/tongwen_core.js)」，移植的「Prototype」可以參考「[prototype-tongwen-nodejs](https://github.com/foreachsam/prototype-tongwen-nodejs)」這個專案。

## 安裝方式

建立專案放置資料夾

``` sh
$ mkdir ~/Project/Atom -p
```

切換到資料夾「~/Project/Atom」

```
$ cd ~/Project/Atom
```

下載「package-atom-tongwen」專案

``` sh
$ git clone https://github.com/foreachsam/package-atom-tongwen.git TongWen
```

建立連結

``` sh
$ apm link TongWen
```

利用「apm」安裝「Atom Package」的使用方法，可以參考「[這裡](http://foreachsam.github.io/book-editor-atom/book/content/cmd/cmd-apm-init-package.html)」的說明。

## 使用方式

### 功能選單

* 'Packages / TongWen / S2T(簡轉繁) Alt+Ctrl+1': '簡轉繁'
* 'Packages / TongWen / T2S(繁轉簡) Alt+Ctrl+2': '繁轉簡'
* 'Packages / TongWen / S2T_S(簡轉繁_選) Alt+Ctrl+3': '(已選文字)簡轉繁'
* 'Packages / TongWen / T2S_S(繁轉簡_選) Alt+Ctrl+4': '(已選文字)繁轉簡'

### 右鍵選單

按下滑鼠右鍵，
有兩個選項可選

* 'TongWen:S2T(簡轉繁)': '簡轉繁'
* 'TongWen:T2S(繁轉簡)': '繁轉簡'

### 命令列表

按下「ctrl+shift+p」，
輸入「TongWen」，
有下面四個命令選項可選

* 'TongWen:S2T': '簡轉繁'
* 'TongWen:T2S': '繁轉簡'
* 'TongWen:S2T_S': '(已選文字)簡轉繁'
* 'TongWen:T2S_S': '(已選文字)繁轉簡'
