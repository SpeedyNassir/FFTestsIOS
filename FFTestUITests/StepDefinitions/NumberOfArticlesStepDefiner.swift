//
//  NumberOfArticlesStepDefiner.swift
//  FFTestUITests
//
//  Created by Nassir on 8/7/18.
//  Copyright © 2018 Fairfax Media. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class NumberOfArticlesStepDefiner: StepDefiner {
    
    override func defineSteps() {
        step("I should see (exactly|no more than) ([0-9]*) Articles") { (conditionArticleCount: String, numberOfArticles: Int) in
            let totalCount = app.tables.cells.count
            switch conditionArticleCount {
            case "exactly":
                XCTAssertEqual(totalCount, numberOfArticles, "Expecting \(numberOfArticles) Articles but found \(totalCount) Articles")
            default:
                XCTAssertLessThanOrEqual (totalCount, numberOfArticles, "Expecting no more than \(numberOfArticles) Articles but found \(totalCount) Articles")
            }
        }
    }
}
