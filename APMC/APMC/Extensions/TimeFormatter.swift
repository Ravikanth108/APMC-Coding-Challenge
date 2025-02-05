//
//  TimeFormatter.swift
//  APMC
//
//  Created by Ravi Kanth Bollam on 2025-02-04.
//

import Foundation

extension Int {
    func formattedTime() -> String {
        let minutes = self / 60
        let seconds = self % 60
        return String(format: "%d:%02d", minutes, seconds)
    }
}

