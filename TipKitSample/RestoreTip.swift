//
//  RestoreTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 28.01.2024.
//

import Foundation
import TipKit

struct RestoreTip: Tip {
    
    @Parameter
    static var isRestored: Bool = false
    
    var title: Text {
        Text("Restore Pro")
    }
    
    var message: Text? {
        Text("Do you know that you can restore the purchases?")
    }
    
    var rules: [Rule] {
        [
            #Rule(Self.$isRestored) {
                $0 == false
            }
        ]
    }
}
