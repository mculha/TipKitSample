//
//  UnlockProTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 2.10.2023.
//

import Foundation
import SwiftUI
import TipKit

struct UnlockProTip: Tip {
    
    var title: Text {
        Text("Unlock Pro")
    }
    
    var message: Text? {
        Text("Do you know that you can use the application unlimitedly?")
    }
    
    var image: Image? {
        Image(systemName: "lock.open.fill")
    }
    
    var actions: [Action] {
        Action(id: "dismiss", title: "Dismiss") {
            self.invalidate(reason: .tipClosed)
        }
    }
}
