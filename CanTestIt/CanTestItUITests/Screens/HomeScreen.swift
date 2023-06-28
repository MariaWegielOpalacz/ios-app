//
//  HomeScreen.swift
//  CanTestItUITests
//
//  Created by maria.wegiel on 17/05/2023.
//

import  XCTest

class HomeScreen: BaseScreen {
    private lazy var helloText = app.staticTexts["Hello!"].firstMatch
    private lazy var plusButton = app.buttons["plus"].firstMatch
    
    @discardableResult
    func isHelloTextExist() -> Self {
        XCTAssertTrue(helloText.exists)
        return self
    }
    
    @discardableResult
    func tapAddEventButton() -> Self {
        _ = plusButton.waitForExistence(timeout: 3)
        plusButton.tap()
        return self
    }
}

//    @discardableResult
//    func isHelloTextExist2() -> Bool {
//       return helloText.exists
//    }

//XCTAssertTrue(app.staticTexts["Hello!"].exists)
