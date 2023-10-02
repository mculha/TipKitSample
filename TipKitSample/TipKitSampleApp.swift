//
//  TipKitSampleApp.swift
//  TipKitSample
//
//  Created by Melih Çulha on 7.09.2023.
//

import SwiftUI
import TipKit

@main
struct TipKitSampleApp: App {
    var body: some Scene {
        WindowGroup {
            SettingsView()
                .task {
                    try? Tips.configure([
                        .displayFrequency(.immediate),
                        .datastoreLocation(.applicationDefault),
                    ])
                }
        }
    }
}
