//
//  EpisodesViewModel.swift
//  APMC
//
//  Created by Ravi Kanth Bollam on 2025-02-03.
//

import Foundation

@MainActor
class EpisodesViewModel: ObservableObject {
    @Published var episodes: [Episode] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    private let service: NetworkServiceProtocol
    
    init(service: NetworkServiceProtocol = NetworkService()) {
        self.service = service
        fetchEpisodes()
    }
    
    func fetchEpisodes() {
        isLoading = true
        Task {
            do {
                self.episodes = try await service.fetchEpisodes()
                self.isLoading = false
            } catch {
                self.errorMessage = error.localizedDescription
                self.isLoading = false
            }
        }
    }
}
