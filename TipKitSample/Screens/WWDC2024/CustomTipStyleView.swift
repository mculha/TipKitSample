//
//  CustomTipStyleView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 30.06.2024.
//

import SwiftUI
import TipKit

struct CustomTipStyleView: View {
    let reusableModels: [ReusableTipModel] = [
        .init(title: "This is a Reusable Tip Title", message: "Reusable Tip Message", image: "arrow.3.trianglepath", bgImage: "image", id: UUID().uuidString)
    ]
    var currentTip: ReusableTipModel {
        return reusableModels.first!
    }
    
    var body: some View {
        VStack {
            TipView(ReusableTip(model: currentTip), arrowEdge: .bottom)
                .tipViewStyle(ReusableCustomTipStyle())
                .padding(.horizontal)
            
            Button("Reusable Button") { }
        }
        .padding()
        
    }
}

#Preview {
    CustomTipStyleView()
}
