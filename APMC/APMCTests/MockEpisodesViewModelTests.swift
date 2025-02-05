//
//  MockEpisodesViewModelTests.swift
//  APMCTests
//
//  Created by Ravi Kanth Bollam on 2025-02-04.
//

import XCTest
@testable import APMC

class MockEpisodesViewModelTests: XCTestCase {
    func testEpisodesViewModelFetchSuccess() async {
        let viewModel = await MockEpisodesViewModel()
        await viewModel.fetchEpisodes()
        
        await MainActor.run {
            XCTAssertEqual(viewModel.episodes.count, 2)
            XCTAssertNil(viewModel.errorMessage)
        }
    }

    func testEpisodesViewModelFetchFailure() async {
        let mockService = MockEpisodeService()
        mockService.shouldReturnError = true
        let viewModel = await EpisodesViewModel(service: mockService)
        
        await viewModel.fetchEpisodes()
        
        await MainActor.run {
            XCTAssertTrue(viewModel.episodes.isEmpty)
        }
    }
}


