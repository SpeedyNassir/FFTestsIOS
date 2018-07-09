//
//  SanityTestFeature.swift
//  FFTestUITests
//
//  Created by Nassir on 8/7/18.
//  Copyright © 2018 Fairfax Media. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class SanityTest: FFXCTest {
    
    // @Sanity_01
    // Scenario: Verify Tapping on specific news displays full screen.
    func testVerifyTappingOnSpecificNewsDisplaysFullScreen() {
        Given("I launch the News App")
        When("I should see screen with News heading")
        When("When I Tap on 1 st news cell")
        Then("I should see News button")
        And("I should see Save article button")
    }
    
    // @Sanity_02
    // Scenario: Verify Heading for each article in Index Screen.
    func testVerifyHeadingForEachArticleInIndexScreen() {
        Given("I launch the News App")
        When("I should see screen with News heading")
        Then("I should see Heading for each article in Index Screen")
    }
    
    // @Sanity_03
    // Scenario: Verify Abstract for each article in Index Screen.
    func testVerifyAbstractForEachArticleInIndexScreen() {
        Given("I launch the News App")
        When("I should see screen with News heading")
        Then("I should see Abstract for each article in Index Screen")
    }
    
    // @Sanity_04
    // Scenario: Verify ByLine for each article in Index Screen.
    func testVerifyByLineForEachArticleInIndexScreen() {
        Given("I launch the News App")
        When("I should see screen with News heading")
        Then("I should see ByLine for each article in Index Screen")
    }
    
    // @Sanity_05
    // Scenario: Verify Image for each article in Index Screen.
    func testVerifyImageForEachArticleInIndexScreen() {
        Given("I launch the News App")
        When("I should see screen with News heading")
        Then("I should see Image for each article in Index Screen")
    }
    
    // @Sanity_06
    // Scenario: Verify No More than 10 Articles are present in Index Screen.
    func testVerifyNoMoreThanTenArticlesArePresentInIndexScreen() {
        Given("I launch the News App")
        When("I should see screen with News heading")
        Then("I should see no more than 10 Articles")
    }
    
    // @Sanity_07
    // Scenario: Verify Navigation to Full Screen and back to Index Screen.
    func testVerifyNavigationToFullArticleAndBackToIndexScreen() {
        Given("I launch the News App")
        And("I should see screen with News heading")
        When("When I Tap on 1 st news cell")
        Then("I should see News button")
        And("I should see Save article button")
        When("I tap on News button")
        Then("I should see screen with News heading")
    }
    
    // @Sanity_08
    // Scenario: Verify Exactly 10 Articles are present in Index Screen.
    func testVerifyExactlyTenArticlesArePresentInIndexScreen() {
        Given("I launch the News App")
        When("I should see screen with News heading")
        Then("I should see exactly 10 Articles")
    }
}
