//
//  NetworkService.swift
//  APMC
//
//  Created by Ravi Kanth Bollam on 2025-02-03.
//

import Foundation

protocol NetworkServiceProtocol {
    func fetchEpisodes() async throws -> [Episode]
}

class NetworkService: NetworkServiceProtocol {
    private let urlString = "https://run.mocky.io/v3/8419df8e-0160-4a35-a1e6-0237a527c566"
    
    func fetchEpisodes() async throws -> [Episode] {
        guard let url = URL(string: urlString) else { throw URLError(.badURL) }
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Episode].self, from: data)
    }
}
