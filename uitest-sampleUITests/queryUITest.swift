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
    let view1labelCount = 4
    let view2LabelCount = 2
    let buttonCount = 2
    let switchCount = 1
    let sliderCount = 1
    let textFieldCount = 1
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
    }

    func testLabelCount() {
        //MARK: iOS13系だとstaticTextsをカウントするとButtonまでカウントされる
        if #available(iOS 13.0, *) {
            let totalCount = view1labelCount + view2LabelCount + buttonCount
            XCTAssertEqual(totalCount, app.staticTexts.count)
        }else {
            let totalCount = view1labelCount
            XCTAssertEqual(totalCount, app.staticTexts.count)
        }
    }

    func testButtonCount() {
        XCTAssertEqual(buttonCount, app.buttons.count)
    }
    
    func testSwitchCount() {
        XCTAssertEqual(switchCount, app.switches.count)
    }
    
    func testSliderCount() {
        XCTAssertEqual(sliderCount, app.sliders.count)
    }
    
    func testTextFieldCount() {
        XCTAssertEqual(textFieldCount, app.textFields.count)
    }
        
}
