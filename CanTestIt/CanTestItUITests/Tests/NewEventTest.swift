//
//  NewEventTest.swift
//  CanTestItUITests
//
//  Created by maria.wegiel on 08/06/2023.
//

import XCTest

class NewEventTests: BaseTest {
    func testAddNewEvent() {
        LoginScreen()
            .enterUsername(text: "user")
            .enterPassword(text: "password")
            .tapLoginButton()
        HomeScreen()
            .tapAddEventButton()
        EventDetailsScreen()
            .tapEventPhoto()
            .swipeElement(numberOfSwipes: 4)
            .tapChoosePhotoButton()
            .enterEventName(text: "Event number 1")
            .tapChooseCategory()
            .tapAndChooseStartDate()
            .tapAndChooseEndDate()
            .tapPriceAndEnterPrice(text: "500 PLN")
            .switchPremiumEvent()
            .tapSaveEvent()
    }
}

