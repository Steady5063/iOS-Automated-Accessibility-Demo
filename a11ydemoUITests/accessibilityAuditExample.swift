//
//  accessibilityAuditExample.swift
//  Automated accessibility testing using standard performAccessibilityAudit() function
//  Each test case runs a scan of each of the screens, and returns a result of issues
//
//  Created by Mark Steadman on 9/27/25.
//

import XCTest

final class accessibilityAuditExample: XCTestCase {
        
    var app: XCUIApplication!
       
       override func setUpWithError() throws {
           continueAfterFailure = true
           app = XCUIApplication()
           app.launch()
       }
       
       override func tearDownWithError() throws {
           app = nil
       }
       
       //Performing Accessibility Audit on Login Screen
       func testLoginScreenAccessibilityAudit() throws {
           XCUIApplication().tabBars.buttons["Home"].tap()
           try app.performAccessibilityAudit()
       }
    
    
        //Performing Accessibility Audit on Blaster Screen
       func testBlasterScreenAccessibilityAudit() throws {
           XCUIApplication().tabBars.buttons["Blasters"].tap()
           try app.performAccessibilityAudit()
       }
    
       //Performing Accessibility Audit on Sabers Screen
       func testSabersScreenAccessibilityAudit() throws {
           XCUIApplication().tabBars.buttons["Sabers"].tap()
           try app.performAccessibilityAudit()
        }
   
}

