//
//  ShouldSeeScreenWithHeadingStepDefiner.swift
//  FFTestUITests
//
//  Created by Nassir on 8/7/18.
//  Copyright © 2018 Fairfax Media. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class ShouldSeeScreenWithHeadingStepDefiner: StepDefiner {
    
    override func defineSteps() {
        step("I should see screen with ([a-zA-Z0-9 ]*) heading") { (heading: String) in
            let element = app.navigationBars[heading]
            XCTAssertTrue(element.exists, "\(heading) not found.")
        }
    }    
}
