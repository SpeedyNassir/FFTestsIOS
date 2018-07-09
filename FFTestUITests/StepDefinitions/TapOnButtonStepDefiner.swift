//
//  TapOnButtonStepDefiner.swift
//  FFTestUITests
//
//  Created by Nassir on 8/7/18.
//  Copyright © 2018 Fairfax Media. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class TapOnButtonStepDefiner: StepDefiner {
    
    override func defineSteps() {
        step("I tap on ([a-zA-Z ]*) button") { (buttonName: String) in
            let element = app.buttons[buttonName].firstMatch
            element.tap()
        }
    }
}
