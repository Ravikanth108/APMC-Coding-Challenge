//
//  EpisodeServiceTests.swift
//  APMCTests
//
//  Created by Ravi Kanth Bollam on 2025-02-04.
//

import Foundation

import XCTest
@testable import APMC

class EpisodeServiceTests: XCTestCase {
    func testFetchEpisodes() async {
        let service = NetworkService()
        do {
            let episodes = try await service.fetchEpisodes()
            XCTAssertFalse(episodes.isEmpty)
        } catch {
            XCTFail("Fetching episodes failed: \(error)")
        }
    }
}
