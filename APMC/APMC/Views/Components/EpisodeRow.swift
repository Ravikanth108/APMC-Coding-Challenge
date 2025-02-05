//
//  EpisodeRow.swift
//  APMC
//
//  Created by Ravi Kanth Bollam on 2025-02-03.
//

import SwiftUI

struct EpisodeRow: View {
    let episode: Episode

    var body: some View {
        HStack(spacing: 16) {
            // Placeholder image for episode thumbnail
            Image(systemName: "film")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.gray)
                .padding(8)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)

            VStack(alignment: .leading, spacing: 8) {
                Text(episode.title)
                    .font(.headline)
                Text("Duration: \(episode.duration.formattedTime())")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .padding(.vertical, 8)
    }
}



