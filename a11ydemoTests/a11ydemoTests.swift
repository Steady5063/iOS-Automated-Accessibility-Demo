//
//  a11ydemoTests.swift
//  a11ydemoTests
//
//  Created by Mark Steadman on 3/22/25.
//

import XCTest
import SnapshotTesting
import AccessibilitySnapshot
import SwiftUI
@testable import a11ydemo

final class a11ydemoTests: XCTestCase {
    
    // MARK: - SwiftUI View Tests
    func testLoginScreenAccessibility() {
        // Create your SwiftUI view
        let home = HomeView()
        
        // Wrap in a hosting controller for testing
        let hostingController = UIHostingController(rootView: home)
        hostingController.view.frame = UIScreen.main.bounds
        
        // Take accessibility snapshot
        assertSnapshot(matching: hostingController, as: .accessibilityImage)
    }

}
