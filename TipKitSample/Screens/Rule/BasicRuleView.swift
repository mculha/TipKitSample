//
//  BasicRuleView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 3.02.2024.
//

import SwiftUI
import TipKit

struct BasicRuleView: View {
    var body: some View {
        VStack {
            TipView(BasicRuleTip(), arrowEdge: .bottom)
            
            Button("Basic Rule Button") { 
                BasicRuleTip.isLoggedIn.toggle()
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    BasicRuleView()
}
