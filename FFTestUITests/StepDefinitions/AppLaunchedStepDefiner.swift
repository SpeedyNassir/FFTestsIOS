//
//  AppLaunchedStepDefiner.swift
//  FFTestUITests
//
//  Created by Nassir on 8/7/18.
//  Copyright © 2018 Fairfax Media. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class AppLaunchedStepDefiner: StepDefiner {
    
    override func defineSteps() {
        step("I launch the News App") {
            app.launch()
        }
    }
}
