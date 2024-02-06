//
//  PopoverActionView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 6.02.2024.
//

import SwiftUI
import TipKit

struct PopoverActionView: View {
    
    @Environment(\.dismiss) var dismiss
    
    private let tip: PopoverActionTip = .init()
    
    var body: some View {
        VStack {
            TipView(tip, arrowEdge: .bottom) { action in
                if action.id == "ignore" {
                    tip.invalidate(reason: .tipClosed)
                } else if action.id == "dismiss" {
                    self.dismiss()
                }
            }
            
            Button("Popover Action Button") { }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    PopoverActionView()
}
