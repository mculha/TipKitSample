//
//  PopoverActionView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 6.02.2024.
//

import SwiftUI
import TipKit

struct PopoverActionView: View {
    private let tip: PopoverActionTip = .init()
    
    var body: some View {
        VStack {
            Button("Popover Action Button") { }
                .popoverTip(tip, arrowEdge: .top) { action in
                    if action.id == "ignore" {
                        tip.invalidate(reason: .tipClosed)
                    } else if action.id == "faq" {
                        UIApplication.shared.open(URL(string: "https://appleid.apple.com/faq")!)
                        self.tip.invalidate(reason: .actionPerformed)
                    }
                }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    PopoverActionView()
}
