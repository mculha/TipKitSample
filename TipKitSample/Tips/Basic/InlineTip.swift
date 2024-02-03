//
//  InlineTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 2.02.2024.
//

import Foundation
import TipKit

struct InlineTip: Tip {
    
    var title: Text {
        Text("This is a Simple Tip \(Image(systemName: "pencil.tip.crop.circle.fill")) Title")
    }
    
    var message: Text? {
        Text("Simple ") +
        Text("Tip ")
            .font(.system(size: 18, weight: .bold))
            .foregroundStyle(.red) +
        Text("Message")
    }
    
    var image: Image? {
        Image(systemName: "calendar.badge.checkmark")
            .symbolRenderingMode(.multicolor)
    }
}
