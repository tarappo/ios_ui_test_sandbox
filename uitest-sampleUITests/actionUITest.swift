//
//  actionUITest.swift
//  uitest-sampleUITests
//
//  Created by Toshiyuki Hirata on 2020/02/29.
//  Copyright © 2020 thirata. All rights reserved.
//


import XCTest

// あくまでバージョン間の差異をチェックするためのコードです
// 実際のUIテストの実装パターンとは異なる点に注意してください
class actionUITest: XCTestCase {
    let app = XCUIApplication()
        
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
    }

    func testButton() {
        app.buttons["main_button_1"].tap()
        app.buttons["main_button_2"].tap()
    }
}
