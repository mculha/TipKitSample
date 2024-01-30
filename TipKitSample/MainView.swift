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
                Section(header: Text("Basic")) {
                    NavigationLink(value: DestinationType.simple) {
                        Label { Text("Simple") } icon: { Image(systemName: "b.circle.fill").foregroundStyle(.green) }
                    } 
                    
                    NavigationLink(value: DestinationType.popover) {
                        Label { Text("Popover") } icon: { Image(systemName: "p.circle.fill").foregroundStyle(.blue) }
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
    
}
