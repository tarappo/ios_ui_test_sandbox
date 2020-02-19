//
//  uitest_sampleUITests.swift
//  uitest-sampleUITests
//
//  Created by thirata on 2020/02/19.
//  Copyright © 2020 thirata. All rights reserved.
//

import XCTest

class uitest_sampleUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
    }

    func testLabelCount() {
        XCTAssertEqual(3, app.staticTexts.count)
    }
    
    func testButtonCount() {
        XCTAssertEqual(2, app.buttons.count)
    }
}
