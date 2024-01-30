//
//  SimpleView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 30.01.2024.
//

import SwiftUI
import TipKit

struct SimpleView: View {
    
    var body: some View {
        VStack {
            TipView(SimpleTip(), arrowEdge: .bottom)
            
            Button("Simple Button") { }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    SimpleView()
}
