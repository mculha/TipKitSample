//
//  SimpleEventTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 7.02.2024.
//

import Foundation
import TipKit

struct SimpleEventTip: Tip {
    
    static let triggerControlEvent = Event(id: "triggerControlEvent")
    
    var title: Text {
        Text("This is a Simple Event Tip Title")
    }
    
    var message: Text? {
        Text("Simple Event Tip Message")
    }
    
    var image: Image? {
        Image(systemName: "mic.circle")
    }
    
    var rules: [Rule] {
        #Rule(Self.triggerControlEvent) {
            $0.donations.count >= 3
        }
    }

}
