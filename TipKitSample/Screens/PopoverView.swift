//
//  PopoverView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 30.01.2024.
//

import SwiftUI
import TipKit

struct PopoverView: View {
    let popoverTip: PopoverTip = .init()
    
    var body: some View {
        VStack {
            Button("Popover Button") { }
                .popoverTip(popoverTip, arrowEdge: .top)
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    PopoverView()
}
