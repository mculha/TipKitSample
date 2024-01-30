//
//  PopoverTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 30.01.2024.
//

import Foundation
import TipKit

struct PopoverTip: Tip {
    var title: Text {
        Text("This is a Popover Tip Title")
    }
    
    var message: Text? {
        Text("Popover Tip Message")
    }
    
    var image: Image? {
        Image(systemName: "tray.and.arrow.up")
    }
}
