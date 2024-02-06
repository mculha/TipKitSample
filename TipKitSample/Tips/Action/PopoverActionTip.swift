//
//  PopoverActionTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 6.02.2024.
//

import Foundation
import TipKit

struct PopoverActionTip: Tip {
    
    var title: Text {
        Text("This is a Popover Action Tip Title")
    }
    
    var message: Text? {
        Text("Popover Action Message")
    }
    
    var image: Image? {
        Image(systemName: "ellipsis.message.fill")
    }
    
    var actions: [Action] {
        Action(id: "dismiss", title: "Dismiss")
        
        Action(id: "ignore", title: "Ignore")
    }
}
