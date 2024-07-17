# XCTest（UI Test）のサンプルコード

|Service|Badge|
|:------|:-----|
|Bitrise（Xcode15.4）|[![Build Status](https://app.bitrise.io/app/1d858c8431aa217d/status.svg?token=GTEOmJjTXqa35KkrFfOXaA)](https://app.bitrise.io/app/1d858c8431aa217d)
|GitHub Actions|[![Actions Status](https://github.com/tarappo/ios_ui_test_sandbox/actions/workflows/main.yml/badge.svg)](https://github.com/tarappo/ios_ui_test_sandbox/actions)|

## 目的
XCTest（UI Test）のAPIの挙動として次を確認するためのサンプルコードです。

 - APIがどういった動作をするか
 - APIが実機とシミュレーターともに動くか、動かないかの確認

あくまでサンプルコードなので複雑なことはおこなっておらず、あくまでもAPIの網羅性や実機とシュミレーターの差異の確認を主軸としています。


## 実行環境
実行環境としては、「GitHub Actions」と「Bitrise」を利用しています。
それぞれの実行結果はこのREADMEの上記のBadgeを見ればわかります。

実行環境の詳細については「Xcodeのバージョン x 実行する端末のOSバージョン」の観点から次のとおりです。

|CIサービス|Xcodeのバージョン|実行環境|
|:-------|:------|:------|
|GitHub Actions|Xcodeのバージョン２種類（指定１種類、最新１種類）|iOSシミュレーター（そのXcodeの最新）|
|Bitrise|Xcodeのバージョン1種類（指定１種類）|iOS実機（Firebase Test Lab）でOSバージョン２種類|


### GitHub Actions
GitHub Actionsでは２種類のXcodeバージョンでマトリックスビルドをしています。
実行結果は次のような感じです。

![CIの実行例](./doc/image/github_actions.png "実行例")

指定した１種類のXcodeと、そのVM（macos-latestを指定）に入っている最新のXcodeを指定しています。

GitHub Actionsの実行環境の情報

 - https://github.com/actions/virtual-environments/tree/main/images/macos

