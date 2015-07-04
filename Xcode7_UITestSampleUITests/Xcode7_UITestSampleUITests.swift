//
//  Xcode7_UITestSampleUITests.swift
//  Xcode7_UITestSampleUITests
//
//  Created by Kenzo on 2015/07/01.
//  Copyright © 2015年 Karuta. All rights reserved.
//

import Foundation
import XCTest

class Xcode7_UITestSampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let app = XCUIApplication()
        let countUpButton = app.buttons["Count up!"]
        let staticText = app.staticTexts["countLabel"]
        countUpButton.tap()
        countUpButton.tap()
        countUpButton.tap()
        XCTAssertTrue(staticText.label == "3")
        
        let resetButton = app.buttons["Reset"]
        resetButton.tap()
        countUpButton.tap()
        resetButton.tap()
        countUpButton.tap()
        XCTAssertTrue(staticText.label == "1")
    }
    
}
