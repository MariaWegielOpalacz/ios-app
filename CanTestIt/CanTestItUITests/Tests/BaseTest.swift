//
//  BaseTest.swift
//  CanTestItUITests
//
//  Created by maria.wegiel on 19/04/2023.
//

import XCTest

class BaseTest: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        app.launch()
        continueAfterFailure = false
    }
    }

