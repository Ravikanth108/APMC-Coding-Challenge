//
//  Episode.swift
//  APMC
//
//  Created by Ravi Kanth Bollam on 2025-02-03.
//

import Foundation

struct Episode: Identifiable, Decodable {
    let id: String
    let title: String
    let description: String?
    let videoUrl: String
    let duration: Int
}

        
