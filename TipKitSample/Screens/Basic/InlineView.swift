//
//  InlineView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 2.02.2024.
//

import SwiftUI
import TipKit

struct InlineView: View {
    var body: some View {
        VStack {
            TipView(InlineTip(), arrowEdge: .bottom)
            
            Button("Inline Button") { }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    InlineView()
}
