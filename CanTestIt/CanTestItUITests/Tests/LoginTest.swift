//
//  LoginTest.swift
//  CanTestItUITests
//
//  Created by maria.wegiel on 19/04/2023.
//

import XCTest

class LoginTests: BaseTest {
    
    func testLoginWithSuccess() {
        LoginScreen()
            .enterUsername(text: "user")
            .enterPassword(text: "password")
            .tapLoginButton()
        HomeScreen()
            .isHelloTextExist()
    }

    func testLoginErrorMessage() {
        LoginScreen()
            .enterUsername(text: "user")
            .enterPassword(text: "wrongpassword")
            .tapLoginButton()
            .isWrongPasswordTextExist()
    }
}

//        XCTAssertTrue(HomeScreen().isHelloTextExist2())
               
//        app.textFields["Enter username"].tap()
//        app.textFields["Enter username"].typeText("user")
//        app.secureTextFields["Enter password"].tap()
//        app.secureTextFields["Enter password"].typeText("password")
//        app.buttons["Login"].tap()
//        XCTAssertTrue(app.staticTexts["Hello!"].exists)

//        app.textFields["Enter username"].tap()
//        app.textFields["Enter username"].typeText("user")
//        app.secureTextFields["Enter password"].tap()
//        app.secureTextFields["Enter password"].typeText("wrongpassword")
//        app.buttons["Login"].tap()
//        XCTAssertTrue(app.staticTexts["Wrong User email or Password"].exists)
