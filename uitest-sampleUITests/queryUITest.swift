//
//  uitest_sampleUITests.swift
//  uitest-sampleUITests
//
//  Created by thirata on 2020/02/19.
//  Copyright © 2020 thirata. All rights reserved.
//

import XCTest

// あくまでバージョン間の差異をチェックするためのコードです
// 実際のUIテストの実装パターンとは異なる点に注意してください
class queryUITest: XCTestCase {
    let app = XCUIApplication()
    let labelCount = 3
    let buttonCount = 2

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
    }

    // Xcode11以降、staticTextsをカウントするとButtonまでカウントされる
    func testLabelCount() {
        let totalCount = labelCount + buttonCount
        XCTAssertEqual(totalCount, app.staticTexts.count)
    }

    func testButtonCount() {
        XCTAssertEqual(buttonCount, app.buttons.count)
    }
}
