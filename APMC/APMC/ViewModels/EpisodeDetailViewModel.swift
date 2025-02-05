//
//  EpisodeDetailViewModel.swift
//  APMC
//
//  Created by Ravi Kanth Bollam on 2025-02-03.
//

import Foundation

@MainActor
class EpisodeDetailViewModel: ObservableObject {
    let episode: Episode
    
    init(episode: Episode) {
        self.episode = episode
    }
}
