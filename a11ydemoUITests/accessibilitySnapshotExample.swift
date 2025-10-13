//
//  accessibilitySnapshotExample.swift
//  a11ydemo
//
//  Created by Mark Steadman on 10/2/25.
//
import XCTest

final class accessibilitySnapshotExample: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        continueAfterFailure = true
        app = XCUIApplication()
        // Setup for accessibility snapshot testing
        setupSnapshotTesting()
    }
    
    func setupSnapshotTesting() {
        // Required for accessibility snapshot testing
        app.launchArguments += ["-UITestingEnabled"]
        app.launch()
    }
    
    
    //Performing Accessibility Audit on Login Screen
    func testLoginScreenAccessibilityAudit() throws {
        XCUIApplication().tabBars.buttons["Home"].tap()
        // Assuming 'myView' is an accessible element in your app
        let myView = app.otherElements["MyViewIdentifier"]
        
        // Verify the accessibility of the view
        SnapshotVerifyAccessibility(myView)
    }
    
    
    //Performing Accessibility Audit on Blaster Screen
    func testBlasterScreenAccessibilityAudit() throws {
        XCUIApplication().tabBars.buttons["Blasters"].tap()
        // Assuming 'myView' is an accessible element in your app
        let myView = app.otherElements["MyViewIdentifier"]
        
        // Verify the accessibility of the view
        SnapshotVerifyAccessibility(myView)
    }
    
    //Performing Accessibility Audit on Sabers Screen
    func testSabersScreenAccessibilityAudit() throws {
        XCUIApplication().tabBars.buttons["Sabers"].tap()
        // Assuming 'myView' is an accessible element in your app
        let myView = app.otherElements["MyViewIdentifier"]
        
        // Verify the accessibility of the view
        SnapshotVerifyAccessibility(myView)
    }
    
}
