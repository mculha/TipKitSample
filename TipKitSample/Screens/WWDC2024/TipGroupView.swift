//
//  TipGroupView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 12.06.2024.
//

import SwiftUI
import TipKit

struct TipGroupView: View {
    
    @State var tipGroup = TipGroup(.ordered) {
        FirstTipGroupTip()
        SecondTipGroupTip()
    }
    
    var body: some View {
        VStack(spacing: 50) {
            Button("The First Tip Group Button") {
                (tipGroup.currentTip as? FirstTipGroupTip)?.invalidate(reason: .actionPerformed)
            }
            .popoverTip(tipGroup.currentTip as? FirstTipGroupTip)
            
            Button("The Second Tip Group Button") { 
                (tipGroup.currentTip as? SecondTipGroupTip)?.invalidate(reason: .actionPerformed)
            }
            .popoverTip(tipGroup.currentTip as? SecondTipGroupTip)
            
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    TipGroupView()
}
