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


//This Test case created accessibility snapshots that are included in the _Snapshots_ folder
final class accessibilitySnapshotExample: XCTestCase {
    
    //Function to create hosting controller
    func createHost<Content: View>(_ view: Content) -> UIHostingController<Content> {
        let hostingController = UIHostingController(rootView: view)
        hostingController.view.frame = UIScreen.main.bounds
        return hostingController
    }
    
    //Snapshot test for home screen
    func testHomeScreenAccessibility() {
        let home = HomeView()
        
        assertSnapshot(matching: createHost(home), as: .accessibilityImage)
    }
    
    //This snapshot test will fail, as there was a change in the accessibility hierarchy
    func testBlasterScreenAccessibility() {
        let blaster = BlasterView()
        
        assertSnapshot(matching: createHost(blaster), as: .accessibilityImage)
    }
    
    //Snapshot test for saber view
    func testSaberScreenAccessibility() {
        let saber = SaberView()

        assertSnapshot(matching: createHost(saber), as: .accessibilityImage)
    }

}
