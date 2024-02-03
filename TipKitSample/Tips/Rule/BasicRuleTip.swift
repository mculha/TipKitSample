//
//  BasicRuleTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 3.02.2024.
//

import Foundation
import TipKit


struct BasicRuleTip: Tip {
    
    @Parameter
    static var isLoggedIn: Bool = false
    
    var title: Text {
        Text("This is a Basic Rule Tip Title")
    }
    
    var message: Text? {
        Text("Basic Rule Tip Message")
    }
    
    var image: Image? {
        Image(systemName: "square.and.arrow.up.circle.fill")
    }
    
    var rules: [Rule] {
        [
            #Rule(Self.$isLoggedIn) {
                $0 == false
            }
        ]
    }
}
