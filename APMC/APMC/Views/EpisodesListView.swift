//
//  EpisodesListView.swift
//  APMC
//
//  Created by Ravi Kanth Bollam on 2025-02-03.
//

import SwiftUI

struct EpisodesListView: View {
    @StateObject var viewModel: EpisodesViewModel

    var body: some View {
        NavigationView {
            List(viewModel.episodes) { episode in
                NavigationLink(destination: EpisodeDetailView(viewModel: EpisodeDetailViewModel(episode: episode))) {
                    EpisodeRow(episode: episode)
                }
            }
            .navigationTitle("Episodes")
            .accessibility(identifier: "Episodes")
            .overlay(
                Group {
                    if viewModel.isLoading {
                        LoadingView()
                    } else if let errorMessage = viewModel.errorMessage {
                        ErrorView(message: errorMessage)
                    }
                }
            )
        }
    }
}

struct LoadingView: View {
    var body: some View {
        ProgressView("Loading episodes...")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ErrorView: View {
    let message: String
    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.triangle")
                .font(.largeTitle)
                .foregroundColor(.red)
            Text(message)
                .foregroundColor(.red)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


