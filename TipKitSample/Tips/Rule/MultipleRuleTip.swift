//
//  MultipleRuleTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 5.02.2024.
//

import Foundation
import TipKit

struct MultipleRuleTip: Tip {
    
    @Parameter
    static var hasOrder: Bool = false
    
    @Parameter
    static var needsSupport: Bool = false
    
    var title: Text {
        Text("This is a Multiple Rule Tip Title")
    }
    
    var message: Text? {
        Text("Multiple Rule Tip Message")
    }
    
    var image: Image? {
        Image(systemName: "camera.metering.multispot")
    }
    
    var rules: [Rule] {
        [
            #Rule(Self.$hasOrder) {
                $0 == true
            },
            
            #Rule(Self.$needsSupport) {
                $0 == true
            }
        ]
    }
}
