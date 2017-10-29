# あのね、

[![Product Name](https://raw.github.com/GabLeRoux/WebMole/master/ressources/WebMole_Youtube_Video.png)](https://www.youtube.com/channel/UC4PtjOfZTbVp9DwtJv82Lzg)

## 製品概要
### Baby x Tech

### 背景（製品開発のきっかけ、課題等）
赤ちゃんとお出かけするとき、お母さんが常に赤ちゃんの様子を見続けることは難しい。例えばベビーカーの中は温度、湿度が外温と違うため、赤ちゃんにとっては不快な状態になっていても、お母さんは気づけない。また、表情や仕草が見えないために排泄をしたかどうか、空腹なのかといったことがわからない。そこで私たちは外出時でも赤ちゃんの状態を常に把握できるウェアラブルデバイスを開発することにした。  
赤ちゃんとの外出時には上記以外にも、おむつを替えたい時、オッパイをあげたいとき、授乳室やおむつ台の場所がすぐに分からないという問題がある。そこで私たちは赤ちゃんの状態を把握するウェアラブルデバイスが赤ちゃんの異常を検知した時に近くの授乳室、おむつ台を案内する機能を追加した。このデバイスが育児のストレスを解消し、赤ちゃんを育てやすい環境の構築の一助になれば幸いです。


### 製品説明（具体的な製品の説明）
クリップ型の装置を赤ちゃんのおむつに付けると、お母さんはアプリで赤ちゃんの様子を管理することができる。

### 特長

#### 1. うんち検出機能

赤ちゃんがうんちをすると臭気センサがそれを検知し、アプリで通知。またGPSの情報から近くのおむつ台の位置を教えてくれる。

#### 2. 泣き声検知
赤ちゃんの泣き声を音声センサが検知し、機械学習を用いて「空腹」「怒り」「不快」の3クラスに分類。赤ちゃんの状態をアプリに通知し、「空腹」の際はGPSの情報から近くの授乳室の場所を教えてくれる。

#### 3. 体温、湿度検知
赤ちゃんの体温や湿度をセンサが検知しアプリ上に表示してくれる。閾値を越えるとアラートで通知してくれる。

#### 4. 道案内
上記の通り、赤ちゃんの状態に異常が生じると現在地の近くにある授乳室やおむつ台への経路を表示する。


### 解決出来ること
赤ちゃんとより外出するのが楽になるだけでなく、家にいるときに料理や掃除で目を離しているときも、 赤ちゃんの状態がわかって安心である。 またおむつを替えてほしいときや空腹のときにすぐにお母さんに 通知がいくので赤ちゃんにとっても快適である。

### 今後の展望
今回のプロダクトの改善点として小型化があげられる。赤ちゃんが身につけるデバイスであるため、赤ちゃんの生活を邪魔せずかつ怪我や誤飲の可能性がない形状にしなければならない。
また、現在赤ちゃんの体温やうんちの検知結果はDBに保存していないが、それらを保存し、管理が可能になればさらに利便性が増すだろう。  
将来的な展望として育児に関して記録すべき事項を全てこのアプリで管理することを考えている。


## 開発内容・開発技術
### 活用した技術
#### API・データ
* [Google Maps Javascript API](https://developers.google.com/maps/documentation/javascript/?hl=ja)
* [Google Maps Distance Matrix API](https://developers.google.com/maps/documentation/distance-matrix/?hl=ja)
* [NEC Sound Event Recognition API](https://www6.arche.blue/portal/)

#### フレームワーク・ライブラリ・モジュール
* [python](https://www.python.jp/)
	- [bottle](https://bottlepy.org/docs/dev/)
	- [Numpy](http://www.numpy.org/)
	- [Scipy](https://www.scipy.org/)
	- [pandas](http://pandas.pydata.org/)
	- [scikit-learn](http://scikit-learn.org/)
	- [PyAudio](https://people.csail.mit.edu/hubert/pyaudio/)
	- [Scikits.Talkbox](https://github.com/cournape/talkbox)
* [MySQL](https://www.mysql.com/jp/)
* [Node.js](https://nodejs.org/ja/)
	- [bleno](https://github.com/sandeepmistry/bleno)
* [においセンサTGS2450](http://akizukidenshi.com/catalog/g/gP-00989/)
* [温湿度センサDHT11](http://akizukidenshi.com/catalog/g/gM-07003/)
* [温度センサADT7410](http://akizukidenshi.com/catalog/g/gM-06675/)

#### デバイス
* [AWS EC2/ubuntu](https://aws.amazon.com/jp/ec2/)
* [Raspberry Pi](https://www.raspberrypi.org/)
* [Ardiuno](https://www.arduino.cc/)

### 研究内容・事前開発プロダクト（任意）
ご自身やチームの研究内容や、事前に持ち込みをしたプロダクトがある場合は、こちらに実績なども含め記載をして下さい。

#### 研究内容
* 
* 

#### 事前開発プロダクト
* 赤ちゃん音声の分類モデルの作成
* スクレイピングによる授乳室、おむつ台の取得
* Raspberry Pi、iOS間のbluetooth通信

### 独自開発技術（Hack Dayで開発したもの）
#### 2日間に開発した独自の機能・技術
* 各種センサ情報の取得、整形および通信
* iOSアプリケーションのインターフェース作成、画面遷移
