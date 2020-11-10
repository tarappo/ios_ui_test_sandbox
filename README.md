# XCUITestのサンプルコード
XCUITestのサンプルコードです。

|Service|Badge|
|:------|:-----|
|Bitrise|[![Build Status](https://app.bitrise.io/app/4768174dfb44bcbb/status.svg?token=VUZUlTypplvt1Uau1p1MZQ&branch=master)](https://app.bitrise.io/app/4768174dfb44bcbb)|
|GitHub Actions|[![Actions Status](https://github.com/tarappo/ios_ui_test_sandbox/workflows/XCUITest/badge.svg)](https://github.com/tarappo/ios_ui_test_sandbox/actions)|


## 目的
Xcodeのバージョンによる挙動の違いをすぐに確認できるように用意しています。
複雑なことは一切せず、基本となるAPIの動作確認をおこなっています。


## 実行環境
実行環境としては、「GitHub Actions」と「Bitrise」を利用しています。
それぞれの実行結果はこのREADMEの上記のBadgeを見ればわかります。

実行環境の詳細については「Xcodeのバージョン x 実行する端末のOSバージョン」の観点から次のとおりです。

|CIサービス|Xcodeのバージョン|実行環境|
|:-------|:------|:------|
|GitHub Actions|Xcodeのバージョン２種類（指定１種類、最新１種類）|iOSシミュレーター（そのXcodeの最新）|
|Bitrise|Xcodeのバージョン２種類|iOS実機（Firebase Test Lab）でOSバージョン２種類（最新と１つ前のOSバージョン）|


### GitHub Actions
GitHub Actionsでは２種類のXcodeバージョンでマトリックスビルドをしています。
実行結果は次のような感じです。

![CIの実行例](./doc/image/github_actions.png "実行例")

指定した１種類のXcodeと、そのVM（macos-latestを指定）に入っている最新のXcodeを指定しています。

GitHub Actionsの実行環境の情報

 - https://github.com/actions/virtual-environments/tree/main/images/macos

### Bitrise
Bitriseでは、２種類のワークフローと２種類のアプリを用意して実行しています。
実行パターンとしては次のとおりです。

 - 最新：Xcode Edge with latest Xcode
   - https://github.com/bitrise-io/bitrise.io/blob/master/system_reports/osx-xcode-edge.log
 - メジャーバージョンの1つ手前（手動管理）
 




