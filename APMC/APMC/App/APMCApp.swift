//
//  APMCApp.swift
//  APMC
//
//  Created by Ravi Kanth Bollam on 2025-02-03.
//

import SwiftUI

@main
struct APMCApp: App {
    var body: some Scene {
        WindowGroup {
            EpisodesListView(viewModel: EpisodesViewModel())
                    }
    }
}
