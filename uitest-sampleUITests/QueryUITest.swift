//
//  QueryUITest
//
//  Created by thirata on 2020/02/19.
//  Copyright © 2020 thirata. All rights reserved.
//

import XCTest

// あくまでバージョン間の差異をチェックするためのコードです
// 実際のUIテストの実装パターンとは異なる点に注意してください
class QueryUITest: XCTestCase {
    let app = XCUIApplication()
    let view1labelCount = 3
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

    //MARK: - カウント
    func testLabelCount() {
        //MARK: iOS13系だとstaticTextsをカウントするとButtonまでカウントされる
        if #available(iOS 13.0, *) {
            let totalCount = view1labelCount + view2LabelCount + buttonCount
            XCTAssertEqual(totalCount, app.staticTexts.count, app.debugDescription)
        }else {
        //MARK: iOS12の実機の場合、statusbarにある時刻の箇所がstaticTextとしてカウントされる
            let totalCount = view1labelCount + view2LabelCount
            XCTAssertEqual(totalCount, app.otherElements["main_view_1"].descendants(matching: .staticText).count, app.debugDescription)
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
    
    //MARK: - Exists
    func testLabelExists() {
        let totalCount = view1labelCount + view2LabelCount
        for no in 1...totalCount {
            XCTAssertTrue(app.staticTexts["main_label_\(no)"].exists)
        }
    }

    func testButtonExists() {
        for no in 1...buttonCount {
            XCTAssertTrue(app.buttons["main_button_\(no)"].exists)
        }
    }
    
    func testSwitchExists() {
        for no in 1...switchCount {
            XCTAssertTrue(app.switches["main_switch_\(no)"].exists)
        }
    }
    
    func testSliderExists() {
        for no in 1...sliderCount {
            XCTAssertTrue(app.sliders["main_slider_\(no)"].exists)
        }
    }
    
    func testTextFieldExists() {
        for no in 1...textFieldCount {
            XCTAssertTrue(app.textFields["main_textfield_\(no)"].exists)
        }
    }
    
    //MARK: - Hittable
    func testLabelHittable() {
        let totalCount = view1labelCount + view2LabelCount
        for no in 1...totalCount {
            XCTAssertTrue(app.staticTexts["main_label_\(no)"].isHittable)
        }
    }

    func testButtonHittable() {
        for no in 1...buttonCount {
            XCTAssertTrue(app.buttons["main_button_\(no)"].isHittable)
        }
    }

    func testtSwitchHittable() {
        for no in 1...switchCount {
            XCTAssertTrue(app.switches["main_switch_\(no)"].isHittable)
        }
    }

    func testTextFieldHittable() {
        for no in 1...textFieldCount {
            XCTAssertTrue(app.textFields["main_textfield_\(no)"].isHittable)
        }
    }

    //MARK: - false: isHittable
    func testSliderHittable() {
        for no in 1...sliderCount {
            XCTAssertTrue(app.sliders["main_slider_\(no)"].isHittable)
        }
    }
}
