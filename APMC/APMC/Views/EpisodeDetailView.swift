//
//  EpisodeDetailView.swift
//  APMC
//
//  Created by Ravi Kanth Bollam on 2025-02-03.
//

import SwiftUI

struct EpisodeDetailView: View {
    @StateObject var viewModel: EpisodeDetailViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(viewModel.episode.title).font(.title)
            if let description = viewModel.episode.description {
                Text(description).font(.body)
            }
            Text("Duration: \(viewModel.episode.duration.formattedTime())")
                .font(.subheadline)
                .foregroundColor(.gray)
            VideoPlayerView(videoURL: viewModel.episode.videoUrl)
            Spacer()
        }
        .padding()
        .navigationTitle("Episode Details")
    }
}

