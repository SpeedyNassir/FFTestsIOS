//
//  XCTestCaseExtension.swift
//  FFTestUITests
//
//  Created by Nassir on 8/7/18.
//  Copyright © 2018 Fairfax Media. All rights reserved.
//

import XCTest

extension XCTestCase {
    
    func waitForExists(element: XCUIElement, timeout: TimeInterval = 20.0) -> XCTWaiter.Result {
        let predicate = NSPredicate(format: "exists == true")
        let existsExpectation = expectation(for: predicate, evaluatedWith: element, handler: nil)
        sleep(2)
        return XCTWaiter().wait(for: [existsExpectation], timeout: timeout)
    }
}
