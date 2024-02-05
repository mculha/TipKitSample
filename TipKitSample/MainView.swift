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
                BasicSection()
                
                CustomSection()
                
                Section("Rule") {
                    NavigationLink(value: DestinationType.basicRule) {
                        Label { Text("Basic Rule") } icon: { Image(systemName: "b.circle.fill").foregroundStyle(.gray) }
                    }
                    
                    NavigationLink(value: DestinationType.multipleRules) {
                        Label { Text("Multiple Rules") } icon: { Image(systemName: "m.circle.fill").foregroundStyle(.brown) }
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
                case .customImageSize:
                    CustomImageSizeView()
                case .inline:
                    InlineView()
                case .customStyle:
                    CustomStyleView()
                case .basicRule:
                    BasicRuleView()
                case .multipleRules:
                    MultipleRulesView()
                }
            }
        }
    }
}

#Preview {
    MainView()
}

struct BasicSection: View {
    var body: some View {
        Section("Basic") {
            NavigationLink(value: DestinationType.simple) {
                Label { Text("Simple") } icon: { Image(systemName: "b.circle.fill").foregroundStyle(.green) }
            }
            
            NavigationLink(value: DestinationType.popover) {
                Label { Text("Popover") } icon: { Image(systemName: "p.circle.fill").foregroundStyle(.blue) }
            }
            
            NavigationLink(value: DestinationType.inline) {
                Label { Text("Inline") } icon: { Image(systemName: "i.circle.fill").foregroundStyle(.yellow) }
            }
        }
    }
}

struct CustomSection: View {
    var body: some View {
        Section("Custom") {
            NavigationLink(value: DestinationType.colorful) {
                Label { Text("Colorful Text") } icon: { Image(systemName: "c.circle.fill").foregroundStyle(.purple) }
            }
            
            NavigationLink(value: DestinationType.colorfulBackground) {
                Label { Text("Colorful Background") } icon: { Image(systemName: "c.circle.fill").foregroundStyle(.orange) }
            }
            
            NavigationLink(value: DestinationType.customCornerRadius) {
                Label { Text("Corner Radius") } icon: { Image(systemName: "c.circle.fill").foregroundStyle(.cyan) }
            }
            
            NavigationLink(value: DestinationType.customImageSize) {
                Label { Text("Adjustable Image Size") } icon: { Image(systemName: "a.circle.fill").foregroundStyle(.blue) }
            }
            NavigationLink(value: DestinationType.customStyle) {
                Label { Text("Style") } icon: { Image(systemName: "s.circle.fill").foregroundStyle(.indigo) }
            }
        }
    }
}


enum DestinationType: Hashable {
    case simple
    case popover
    case inline
    case colorful
    case colorfulBackground
    case customCornerRadius
    case customImageSize
    case customStyle
    case basicRule
    case multipleRules
}
