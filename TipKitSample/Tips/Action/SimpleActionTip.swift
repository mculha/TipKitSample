//
//  SimpleActionTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 6.02.2024.
//

import Foundation
import TipKit

struct SimpleActionTip: Tip {
    var title: Text {
        Text("This is a Simple Action Tip Title")
    }
    
    var message: Text? {
        Text("Simple Action Message")
    }
    
    var image: Image? {
        Image(systemName: "ellipsis.bubble.fill")
    }
    
    var actions: [Action] {
        Action(id: "faq", title: "FAQ")
        
        Action(id: "ignore", title: "Ignore")
    }
}
