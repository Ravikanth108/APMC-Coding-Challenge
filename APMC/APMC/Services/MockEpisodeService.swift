//
//  MockEpisodeService.swift
//  APMC
//
//  Created by Ravi Kanth Bollam on 2025-02-04.
//

import Foundation

class MockEpisodeService: NetworkServiceProtocol {
    var shouldReturnError = false
    
    func fetchEpisodes() async throws -> [Episode] {
        if shouldReturnError {
            throw URLError(.badServerResponse)
        }
        return [
            Episode(id: "1", title: "Mock Episode 1", description: "Mock Description 1", videoUrl: "https://example.com/video1.mp4", duration: 300),
            Episode(id: "2", title: "Mock Episode 2", description: "Mock Description 2", videoUrl: "https://example.com/video2.mp4", duration: 450)
        ]
    }
}
