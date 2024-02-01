//
//  ContentView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 7.09.2023.
//

import SwiftUI
import TipKit

struct MainView: View {
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Basic") {
                    NavigationLink(value: DestinationType.simple) {
                        Label { Text("Simple") } icon: { Image(systemName: "b.circle.fill").foregroundStyle(.green) }
                    } 
                    
                    NavigationLink(value: DestinationType.popover) {
                        Label { Text("Popover") } icon: { Image(systemName: "p.circle.fill").foregroundStyle(.blue) }
                    }
                }
                
                Section("Custom") {
                    NavigationLink(value: DestinationType.colorful) {
                        Label { Text("Colorful Text") } icon: { Image(systemName: "c.circle.fill").foregroundStyle(.purple) }
                    }
                    
                    NavigationLink(value: DestinationType.colorfulBackground) {
                        Label { Text("Colorful background") } icon: { Image(systemName: "c.circle.fill").foregroundStyle(.orange) }
                    }
                    
                    NavigationLink(value: DestinationType.customCornerRadius) {
                        Label { Text("Custom Corner Radius") } icon: { Image(systemName: "c.circle.fill").foregroundStyle(.cyan) }
                    }
                }
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("TipKit")
            .navigationDestination(for: DestinationType.self) { navigation in
                switch navigation {
                case .simple:
                    SimpleView()
                case .popover:
                    PopoverView()
                case .colorful:
                    ColorfulTextView()
                case .colorfulBackground:
                    ColorfulBackgroundView()
                case .customCornerRadius:
                    CustomCornerRadiusView()
                }
            }
        }
    }
}

#Preview {
    MainView()
}

enum DestinationType: Hashable {
    case simple
    case popover
    case colorful
    case colorfulBackground
    case customCornerRadius
}
