//
//  AddEventScreen.swift
//  CanTestItUITests
//
//  Created by maria.wegiel on 08/06/2023.
//

import XCTest

class EventDetailsScreen: BaseScreen {
    private lazy var choosePhotoPlaceholder = app.buttons["Tap choose your cover photo"].firstMatch
    private lazy var eventTitleTextField = app.textFields["name of your event*"].firstMatch
    private lazy var categoryEventDropDown = app.buttons.staticTexts["choose category"].firstMatch
    private lazy var startDate = app.textFields["Start date"].firstMatch
    private lazy var endDate = app.textFields["End date"].firstMatch
    private lazy var priceTextField = app.textFields["price* PLN"].firstMatch
    private lazy var premiumEventSwitch = app.switches["Premium event"].firstMatch
    
    private lazy var saveButton = app.buttons["Save"].firstMatch
    private lazy var cancelButton = app.buttons["Cancel"].firstMatch
    private lazy var choosePhotoButton = app.buttons["Choose"].firstMatch

    @discardableResult
    func tapEventPhoto() -> Self {
        choosePhotoPlaceholder.tap()
        return self
    }
    
    func swipeElement(numberOfSwipes: Int) -> Self {
        var repeationCount = 0
        while repeationCount >= numberOfSwipes {
            app.collectionViews.element.swipeLeft()
            repeationCount += 1
        }
        return self
    }
    
    @discardableResult
    func tapChoosePhotoButton() -> Self {
        choosePhotoButton.tap()
        return self
    }
    
    @discardableResult
    func enterEventName(text: String) -> Self {
        eventTitleTextField.tap()
        eventTitleTextField.typeText(text)
        return self
    }
    
    @discardableResult
    func chooseCategory() -> Self {
        categoryEventDropDown.tap()
        return self
    }
    
    @discardableResult
    func chooseStartDate() -> Self {
        startDate.tap()
        return self
    }
    
    @discardableResult
    func chooseEndDate() -> Self {
        endDate.tap()
        return self
    }
    
    @discardableResult
    func enterPrice(text: String) -> Self {
        priceTextField.tap()
        priceTextField.typeText(text)
        return self
    }
    
    @discardableResult
    func switchPremiumEvent() -> Self {
        premiumEventSwitch.tap()
        return self
    }
    
    @discardableResult
    func saveEvent() -> Self {
        saveButton.tap()
        return self
    }
}
