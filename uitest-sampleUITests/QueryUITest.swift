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
    let label1Count = 3
    let label2Count = 2 // View2内
    let label3Count = 1 // 画面外
    let buttonCount = 2
    let switchCount = 1
    let sliderCount = 1
    let textFieldCount = 1
    let view1Count = 1
    let view2Count = 1
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
        takeScreenshot(name: "アプリ起動")
    }

    override func tearDown() {
    }

    //MARK: - カウント
    func testLabelCount() {
        //MARK: iOS13系だとstaticTextsをカウントするとButtonまでカウントされる
        if #available(iOS 13.0, *) {
            let totalCount = label1Count + label2Count + label3Count + buttonCount
            XCTAssertEqual(totalCount, app.staticTexts.count, app.debugDescription)
        }else {
        //MARK: iOS12の実機の場合、statusbarにある時刻の箇所がstaticTextとしてカウントされる
            let totalCount = label1Count + label2Count + label3Count
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
        for no in 1...label1Count {
            XCTAssertTrue(app.staticTexts["main_label1_\(no)"].exists)
        }
        for no in 1...label2Count {
            XCTAssertTrue(app.staticTexts["main_label2_\(no)"].exists)
        }
        for no in 1...label3Count {
            XCTAssertTrue(app.staticTexts["main_label3_\(no)"].exists)
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

    func testViewExists() {
        let viewCount = view1Count + view2Count
        for no in 1...viewCount {
            XCTAssertTrue(app.otherElements["main_view_\(no)"].exists)
        }
    }

    //MARK: - Hittable
    func testLabelHittable() {
        for no in 1...label1Count {
            XCTAssertTrue(app.staticTexts["main_label1_\(no)"].isHittable)
        }
        for no in 1...label2Count {
            XCTAssertTrue(app.staticTexts["main_label2_\(no)"].isHittable)
        }
        for no in 1...label3Count {
            XCTAssertFalse(app.staticTexts["main_label3_\(no)"].isHittable)
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

    func testSliderHittable() {
        for no in 1...sliderCount {
            XCTAssertTrue(app.sliders["main_slider_\(no)"].isHittable)
        }
    }

    func testViewHittable() {
        // main_view_1の「User Interaction Enabled」がtrueになっています
        XCTAssertTrue(app.otherElements["main_view_1"].isHittable)
        // main_view_2の「User Interaction Enabled」がfalseになっています
        XCTAssertFalse(app.otherElements["main_view_2"].isHittable)
    }
}

extension XCTestCase {
    func takeScreenshot(name: String) {
        let screenshot = XCUIScreen.main.screenshot()
        let attachment = XCTAttachment(screenshot: screenshot)
        attachment.lifetime = .keepAlways
        attachment.name = name
        self.add(attachment)
    }
}
