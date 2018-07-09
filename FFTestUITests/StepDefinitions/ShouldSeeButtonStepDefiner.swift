//
//  ShouldSeeButtonStepDefiner.swift
//  FFTestUITests
//
//  Created by Nassir on 8/7/18.
//  Copyright © 2018 Fairfax Media. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class ShouldSeeButtonStepDefiner: StepDefiner {
    
    override func defineSteps() {
        step("I should see ([a-zA-Z.?! ]*) button") { (buttonName: String) in
            let element = app.buttons[buttonName]
            self.test.waitForExists(element: element, timeout: 25.0)
            XCTAssertTrue(element.exists, "\(buttonName) button not found.")
        }
    }
}
