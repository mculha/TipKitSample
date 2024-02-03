//
//  CustomStyleTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 2.02.2024.
//

import Foundation
import TipKit

struct CustomStyleTip: Tip {
    var title: Text {
        Text("This is a Custom Style Tip Title")
    }
    
    var message: Text? {
        Text("Custom Style Tip Message")
    }
    
    var image: Image? {
        Image(systemName: "bookmark.square.fill")
    }
    
    var actions: [Action] {
        Action(id: "dismiss", title: "Dismiss") {
            self.invalidate(reason: .tipClosed)
        }
    }
}
