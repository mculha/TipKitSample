//
//  SimpleTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 30.01.2024.
//

import Foundation
import TipKit


struct SimpleTip: Tip {
    
    var title: Text {
        Text("This is a Simple Tip Title")
    }
    
    var message: Text? {
        Text("Simple Tip Message")
    }
    
    var image: Image? {
        Image(systemName: "waveform.circle")
    }
}
