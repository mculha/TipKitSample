//
//  ColorfulBackgroundView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 30.01.2024.
//

import SwiftUI
import TipKit

struct ColorfulBackgroundView: View {
    var body: some View {
        VStack {
            TipView(ColorfulBackgroundTip(), arrowEdge: .bottom)
                .tipBackground(.red)
            
            Button("Colorful Background Button") { }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    ColorfulBackgroundView()
}
