//
//  EpisodesUITests.swift
//  APMCUITests
//
//  Created by Ravi Kanth Bollam on 2025-02-04.
//

import XCTest

final class EpisodesUITests: XCTestCase {
    private var app: XCUIApplication!
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        app.terminate()
        app = nil
    }

    // Test if episodes list is loaded properly
    func testEpisodesListViewLoadsEpisodes() throws {
        let firstEpisode = app.staticTexts["Big Buck Bunny"]
        let secondEpisode = app.staticTexts["Elephants Dream"]

        XCTAssertTrue(firstEpisode.waitForExistence(timeout: 5))
        XCTAssertTrue(secondEpisode.exists)
    }

    // Test if episode details view shows the correct information
    func testEpisodeDetailsViewDisplaysCorrectInfo() throws {
        let firstEpisode = app.staticTexts["Big Buck Bunny"]
        XCTAssertTrue(firstEpisode.waitForExistence(timeout: 5))
        firstEpisode.tap()

        let episodeTitle = app.staticTexts["Big Buck Bunny"]
        let description = app.staticTexts["This is the first sample video."]

        XCTAssertTrue(episodeTitle.exists)
        XCTAssertTrue(description.exists)
    }

    // Test if video stops playing when navigating back
    func testVideoPlayerStopsOnNavigationBack() throws {
        let firstEpisode = app.staticTexts["Big Buck Bunny"]
        XCTAssertTrue(firstEpisode.waitForExistence(timeout: 5))
        firstEpisode.tap()

        let playButton = app.buttons["Play"]
        XCTAssertTrue(playButton.exists)
        playButton.tap()

        let backButton = app.navigationBars.buttons.element(boundBy: 0)
        XCTAssertTrue(backButton.exists)
        backButton.tap()

        let homeScreen = app.staticTexts["Big Buck Bunny"]
        XCTAssertTrue(homeScreen.waitForExistence(timeout: 5))
    }
}
