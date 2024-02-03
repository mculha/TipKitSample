//
//  ColorfulBackgroundTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 30.01.2024.
//

import Foundation
import TipKit

struct ColorfulBackgroundTip: Tip {
    var title: Text {
        Text("This is a Colorful Background Tip Title")
    }
    
    var message: Text? {
        Text("Colorful Background Tip Message")
    }
    
    var image: Image? {
        Image(systemName: "record.circle.fill")
    }
}
