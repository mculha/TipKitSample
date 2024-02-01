//
//  CustomImageSizeView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 1.02.2024.
//

import SwiftUI
import TipKit

struct CustomImageSizeView: View {
    var body: some View {
        VStack {
            TipView(CustomImageSizeTip(), arrowEdge: .bottom)
                .tipImageSize(CGSize(width: 10, height: 10))
            
            Button("Custom Image Size Button") { }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    CustomImageSizeView()
}
