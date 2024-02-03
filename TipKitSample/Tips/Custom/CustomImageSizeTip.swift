//
//  CustomImageSizeTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 1.02.2024.
//

import Foundation
import TipKit

struct CustomImageSizeTip: Tip {
    var title: Text {
        Text("This is a Custom Image Size Tip Title")
    }
    
    var message: Text? {
        Text("Custom Image Size Tip Message")
    }
    
    var image: Image? {
        Image(systemName: "photo.circle")
    }
}
