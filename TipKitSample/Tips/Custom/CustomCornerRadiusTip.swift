//
//  CustomCornerRadiusTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 1.02.2024.
//

import Foundation
import TipKit

struct CustomCornerRadiusTip: Tip {
    var title: Text {
        Text("This is a Custom Corner Radius Tip Title")
    }
    
    var message: Text? {
        Text("Custom Corner Radius Tip Message")
    }
    
    var image: Image? {
        Image(systemName: "recordingtape.circle")
    }
}
