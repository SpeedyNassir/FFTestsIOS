//
//  FFXCTest.swift
//  FFTestUITests
//
//  Created by Nassir on 8/7/18.
//  Copyright © 2018 Fairfax Media. All rights reserved.
//

import Foundation
import XCTest

let app: XCUIApplication = XCUIApplication()

class FFXCTest: XCTestCase {
    
    // Setup by launching app
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
    
    override func tearDown() {
        super.tearDown()
        app.terminate()
    }
}
