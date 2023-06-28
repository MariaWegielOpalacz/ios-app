//
//  LoginScreen.swift
//  CanTestItUITests
//
//  Created by maria.wegiel on 11/05/2023.
//

import XCTest

class LoginScreen: BaseScreen {
    private lazy var usernameTextField = app.textFields[AccessibilityIDs.Login.usernameTextField]
    private lazy var passwordTextField = app.secureTextFields[AccessibilityIDs.Login.passwordTextField]
    private lazy var loginButton = app.buttons[AccessibilityIDs.Login.loginButton]
    private lazy var wrongPasswordText = app.staticTexts[AccessibilityIDs.Login.wrongPasswordText]
    
    @discardableResult
    func enterUsername(text: String) -> Self {
        usernameTextField.tap()
        usernameTextField.typeText(text)
        return self
    }
    
    @discardableResult
    func enterPassword(text: String) -> Self {
        passwordTextField.tap()
        passwordTextField.typeText(text)
        return self
    }
    
    @discardableResult
    func tapLoginButton() -> Self {
        loginButton.tap()
        return self
    }
    
    @discardableResult
    func isWrongPasswordTextExist() -> Self {
        XCTAssertTrue(wrongPasswordText.exists)
        return self
    }
}

//    app.textFields["Enter username"].tap()
//    app.textFields["Enter username"].typeText("user")
//    app.secureTextFields["Enter password"].tap()
//    app.secureTextFields["Enter password"].typeText("password")
//    app.buttons["Login"].tap()
//    XCTAssertTrue(app.staticTexts["Hello!"].exists)
