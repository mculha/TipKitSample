//
//  ColorfulTextView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 30.01.2024.
//

import SwiftUI
import TipKit

struct ColorfulTextView: View {
    var body: some View {
        VStack {
            TipView(ColorfulTextTip(), arrowEdge: .bottom)
            
            Button("Colorful Text Button") { }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    ColorfulTextView()
}
