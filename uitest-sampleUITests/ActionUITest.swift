//
//  ActionUITest
//
//  Created by Toshiyuki Hirata on 2020/02/29.
//  Copyright © 2020 thirata. All rights reserved.
//


import XCTest

// あくまでバージョン間の差異をチェックするためのコードです
// 実際のUIテストの実装パターンとは異なる点に注意してください
class ActionUITest: XCTestCase {
    let app = XCUIApplication()
    //TODO: actionは別UIに変更予定
    let view1labelCount = 3
    var view2LabelCount = 2
    var buttonCount = 2
    var switchCount = 1
    var sliderCount = 1
    var textFieldCount = 1
    let secureTextFieldCount = 1
    
        
    override func setUp() {
        app.launchEnvironment = [ "ENV1" : "VALUE1",
                                  "ENV2" : "VALUE2" ]

        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
    }

    //MARK: tap
    func testButtonTap() {
        for no in 1...buttonCount {
            app.buttons["main_button_\(no)"].tap()
        }
    }

    func testTextFieldTap() {
        for no in 1...textFieldCount {
            app.textFields["main_textfield_\(no)"].tap()
        }
    }
    
    //MARK: typeText
    func testTextFieldTypeText() {
        for no in 1...textFieldCount {
            app.textFields["main_textfield_\(no)"].tap()
            app.textFields["main_textfield_\(no)"].typeText("test_\(no)")
        }
    }

    func testSecureTextFieldTypeText() {
        for no in 1...secureTextFieldCount {
            app.secureTextFields["main_securetextfield_\(no)"].tap()
            app.secureTextFields["main_securetextfield_\(no)"].typeText("test_\(no)")
        }
    }
}
