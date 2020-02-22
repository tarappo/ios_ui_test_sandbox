# XCUITestのサンプルコード
XCUITestのサンプルコードです。

|Service|Badge|
|:------|:-----|
|Bitrise|[![Build Status](https://app.bitrise.io/app/4768174dfb44bcbb/status.svg?token=VUZUlTypplvt1Uau1p1MZQ&branch=master)](https://app.bitrise.io/app/4768174dfb44bcbb)|
|GitHub Actions|[![Actions Status](https://github.com/tarappo/ios_ui_test_sandbox/workflows/CI/badge.svg)](https://github.com/tarappo/ios_ui_test_sandbox/actions)|


## 目的
Xcodeのバージョンによる挙動の違いをすぐに確認できるように用意しています。

## 実行環境
環境としては「GitHub Actions」を使って複数のXcodeバージョンでマトリックスビルドをしています。
実行結果は次のような感じです。

![CIの実行例](./doc/image/github_actions.png "実行例")

また他に「Bitrise」も併せて利用しています。
それぞれの実行結果はこのREADMEの上記のBadgeを見ればわかります。


実行環境の詳細については次のとおりです。

|CIサービス|Xcodeのバージョン|実行環境|
|:-------|:------|:------|
|GitHub Actions|Xcodeのバージョン3種類|iOSシミュレーター（そのXcodeの最新）|
|Bitrise|-|-|


