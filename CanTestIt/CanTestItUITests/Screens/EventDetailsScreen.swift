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
    private lazy var categoryEventConcert = app.staticTexts["Concert"].firstMatch
    private lazy var startDate = app.textFields["Start date"].firstMatch
    private lazy var chooseStartDate = app.buttons["czwartek, 29 czerwca"].firstMatch
    private lazy var doneButtonInChooseStartDate = app.buttons["Done"].firstMatch
    private lazy var endDate = app.textFields["End date"].firstMatch
    private lazy var chooseEndDate = app.buttons["czwartek, 30 czerwca"].firstMatch
    private lazy var doneButtonInChooseEndDate = app.buttons["Done"]
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
    func tapChooseCategory() -> Self {
        categoryEventDropDown.tap()
        categoryEventConcert.tap()
        return self
    }
    
    @discardableResult
    func tapAndChooseStartDate() -> Self {
        startDate.tap()
        chooseStartDate.tap()
        doneButtonInChooseStartDate.tap()
        return self
    }
    
    @discardableResult
    func tapAndChooseEndDate() -> Self {
        endDate.tap()
//        chooseEndDate.tap()
//        doneButtonInChooseEndDate.tap()
        return self
    }
    
    @discardableResult
    func tapPriceAndEnterPrice(text: String) -> Self {
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
    func tapSaveEvent() -> Self {
        saveButton.tap()
        return self
    }
}
