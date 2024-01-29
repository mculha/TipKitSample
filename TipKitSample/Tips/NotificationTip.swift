//
//  NotificationTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 29.01.2024.
//

import Foundation
import TipKit

struct NotificationTip: Tip {
    
    @Parameter
    static var isNotificationTipShown: Bool = false
    
    var title: Text {
        Text("Change Notification")
            .foregroundStyle(.indigo)
    }
    
    var message: Text? {
        Text("Do you know that you can turn on/off the notifications?")
    }
    
    var image: Image? {
        Image(systemName: "iphone.gen3.radiowaves.left.and.right")
    }
    
    var rules: [Rule] {
        [
            #Rule(Self.$isNotificationTipShown) {
                $0 == false
            }
        ]
    }
    
}
