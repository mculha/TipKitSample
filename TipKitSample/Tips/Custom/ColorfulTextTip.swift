//
//  ColorfulTextTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 30.01.2024.
//

import Foundation
import TipKit

struct ColorfulTextTip: Tip {
    
    var title: Text {
        Text("This is a Colorful Tip Title")
            .foregroundStyle(.purple)
    }
    
    var message: Text? {
        Text("Colorful Tip Message")
            .foregroundStyle(.cyan)
    }
    
    var image: Image? {
        Image(systemName: "doc.badge.gearshape.fill")
    }
    
}
