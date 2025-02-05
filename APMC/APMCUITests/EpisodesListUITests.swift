//
//  EpisodesListUITests.swift
//  APMCUITests
//
//  Created by Ravi Kanth Bollam on 2025-02-04.
//

import XCTest

class EpisodesListUITests: XCTestCase {
    func testEpisodesListLoads() {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssertTrue(app.navigationBars["Episodes"].exists)
    }
}

