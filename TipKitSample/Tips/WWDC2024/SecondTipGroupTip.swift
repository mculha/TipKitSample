//
//  SecondTipGroupTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 28.06.2024.
//

import Foundation
import TipKit

struct SecondTipGroupTip: Tip {
    
    var title: Text {
        Text("This is the Second Tip Group Title")
    }
    
    var message: Text? {
        Text("This is the Second Tip Group Event Tip Message")
    }
    
    var image: Image? {
        Image(systemName: "microbe.circle")
    }
}
