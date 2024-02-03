//
//  CustomCornerRadiusView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 1.02.2024.
//

import SwiftUI
import TipKit

struct CustomCornerRadiusView: View {
    var body: some View {
        VStack {
            TipView(CustomCornerRadiusTip(), arrowEdge: .bottom)
                .tipCornerRadius(25)
            
            Button("Custom Corner Radius Button") { }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    CustomCornerRadiusView()
}
