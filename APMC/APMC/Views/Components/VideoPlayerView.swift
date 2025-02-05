//
//  VideoPlayerView.swift
//  APMC
//
//  Created by Ravi Kanth Bollam on 2025-02-03.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let videoURL: String
    @State private var player: AVPlayer?
    @State private var isPlaying = false
    
    var body: some View {
        VStack {
            if let url = URL(string: videoURL) {
                VideoPlayer(player: player)
                    .frame(height: 300)
                    .onAppear {
                        player = AVPlayer(url: url)
                    }
                    .onDisappear {
                        player?.pause()
                        player = nil
                    }
            } else {
                Text("Invalid Video URL").foregroundColor(.red)
            }
            
            HStack {
                Button(action: {
                    player?.play()
                    isPlaying = true
                }) {
                    Image(systemName: "play.fill")
                        .padding()
                        .background(Circle().fill(Color.black))
                        .foregroundColor(.white)
                }
                
                Button(action: {
                    player?.pause()
                    isPlaying = false
                }) {
                    Image(systemName: "pause.fill")
                        .padding()
                        .background(Circle().fill(Color.black))
                        .foregroundColor(.white)
                }
                
                Button(action: {
                    player?.seek(to: .zero)
                    player?.play()
                    isPlaying = true
                }) {
                    Image(systemName: "backward.fill")
                        .padding()
                        .background(Circle().fill(Color.black))
                        .foregroundColor(.white)
                }
            }
            .padding(.top)
        }
    }
}
