//
//  SimpleActionView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 6.02.2024.
//

import SwiftUI
import TipKit

struct SimpleActionView: View {
    private let tip: SimpleActionTip = .init()
    
    var body: some View {
        VStack {
            TipView(tip, arrowEdge: .bottom) { action in
                if action.id == "ignore" {
                    tip.invalidate(reason: .tipClosed)
                } else if action.id == "faq" {
                    UIApplication.shared.open(URL(string: "https://appleid.apple.com/faq")!)
                    self.tip.invalidate(reason: .actionPerformed)
                }
            }
            Button("Simple Action Button") { }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    SimpleActionView()
}
