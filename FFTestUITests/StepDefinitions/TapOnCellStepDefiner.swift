//
//  TapOnCellStepDefiner.swift
//  FFTestUITests
//
//  Created by Nassir on 8/7/18.
//  Copyright © 2018 Fairfax Media. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class TapOnCellStepDefiner: StepDefiner {
    
    override func defineSteps() {
        step("When I Tap on ([0-9]*) ([A-Za-z]*) news cell") { (cellNumber: Int) in
            let element = app.tables.cells.element(boundBy: cellNumber - 1)
            element.tap()
        }
    }
}
