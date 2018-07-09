//
//  ShouldSeeForEachArticleStepDefiner.swift
//  FFTestUITests
//
//  Created by Nassir on 8/7/18.
//  Copyright © 2018 Fairfax Media. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class ShouldSeeForEachArticleStepDefiner: StepDefiner {
    
    override func defineSteps() {
        step("I should see (Image|Heading|Abstract|ByLine) for each article in Index Screen") { (itemType: String) in
            switch itemType {
            case "Image": verifyImageElementsFor(elementPosition: 0)
            case "Heading": verifyTextElementsFor(elementPosition: 0)
            case "Abstract": verifyTextElementsFor(elementPosition: 1)
            case "ByLine": verifyTextElementsFor(elementPosition: 2)
            default: XCTFail("Element Type not found")
            }
        }
        
        func verifyTextElementsFor(elementPosition position: Int) {
            let totalCount = app.tables.cells.count
            for currentPositiom in 0..<totalCount {
                let textField =  app.tables.cells.element(boundBy: currentPositiom).staticTexts.element(boundBy: position).exists
                XCTAssertTrue(textField, "No Text found at \(currentPositiom) position")
            }
        }
        
        func verifyImageElementsFor(elementPosition position: Int) {
            let totalCount = app.tables.cells.count
            for currentPositiom in 0..<totalCount {
                let textField =  app.tables.cells.element(boundBy: currentPositiom).images.element(boundBy: position).exists
                XCTAssertTrue(textField, "No Image found at \(currentPositiom) position")
            }
        }
    }
}
