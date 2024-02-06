//
//  SimpleEventView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 7.02.2024.
//

import SwiftUI
import TipKit

struct SimpleEventView: View {
    
    
    var body: some View {
        VStack(spacing: 10) {
            
            Text("To show a Tip Click the Button 3 Times")
            
            
            TipView(SimpleEventTip(), arrowEdge: .bottom)
            
            Button("Simple Event Button") {
                Task { await SimpleEventTip.triggerControlEvent.donate() }
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    SimpleEventView()
}
