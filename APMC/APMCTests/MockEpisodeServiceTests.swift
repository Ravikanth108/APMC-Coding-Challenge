//
//  MockEpisodeServiceTests.swift
//  APMCTests
//
//  Created by Ravi Kanth Bollam on 2025-02-04.
//

import XCTest
@testable import APMC

class MockEpisodeServiceTests: XCTestCase {
    func testFetchEpisodesSuccess() async {
        let service = MockEpisodeService()
        do {
            let episodes = try await service.fetchEpisodes()
            XCTAssertEqual(episodes.count, 2)
            XCTAssertEqual(episodes.first?.title, "Mock Episode 1")
        } catch {
            XCTFail("Fetching episodes should not fail")
        }
    }
    
    func testFetchEpisodesFailure() async {
        let service = MockEpisodeService()
        service.shouldReturnError = true
        
        do {
            _ = try await service.fetchEpisodes()
            XCTFail("Fetching episodes should have failed")
        } catch {
            XCTAssertNotNil(error)
        }
    }
}
