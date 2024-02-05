//
//  MultipleRulesView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 5.02.2024.
//

import SwiftUI
import TipKit

struct MultipleRulesView: View {
    @State private var hasOrder: Bool = false
    @State private var needsSupport: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            TipView(MultipleRuleTip(), arrowEdge: .bottom)
            Toggle("Has Order", isOn: $hasOrder)
            
            Toggle("Needs Support", isOn: $needsSupport)
            
        }
        .padding(20)
        .onChange(of: hasOrder) {
            MultipleRuleTip.hasOrder = hasOrder
        }
        .onChange(of: needsSupport) {
            MultipleRuleTip.needsSupport = needsSupport
        }
    }
}

#Preview {
    MultipleRulesView()
}
