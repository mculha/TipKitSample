//
//  CustomStyleView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 2.02.2024.
//

import SwiftUI
import TipKit

struct CustomStyleView: View {
    var body: some View {
        VStack {
            TipView(CustomStyleTip(), arrowEdge: .bottom)
                .tipViewStyle(CustomTipStyle())
            
            Button("Custom Style Button") { }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    CustomStyleView()
}
