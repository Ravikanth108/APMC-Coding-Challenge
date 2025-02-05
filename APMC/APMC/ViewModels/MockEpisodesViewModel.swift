//
//  MockEpisodesViewModel.swift
//  APMC
//
//  Created by Ravi Kanth Bollam on 2025-02-04.
//

import Foundation

class MockEpisodesViewModel: EpisodesViewModel {
    override init(service: NetworkServiceProtocol = MockEpisodeService()) {
        super.init(service: service)
    }
}
