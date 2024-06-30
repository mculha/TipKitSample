//
//  ReusableTipView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 29.06.2024.
//

import SwiftUI
import TipKit

struct ReusableTipView: View {
    
    let reusableModels: [ReusableTipModel] = [
        .init(title: "This is a Reusable Tip Title", message: "Reusable Tip Message", image: "arrow.3.trianglepath", id: UUID().uuidString)
    ]
    var currentTip: ReusableTipModel {
        return reusableModels.first!
    }
    
    var body: some View {
        VStack {
            TipView(ReusableTip(model: currentTip), arrowEdge: .bottom)
            
            Button("Reusable Button") { }
        }
        .padding()
        
    }
}

#Preview {
    ReusableTipView()
}
