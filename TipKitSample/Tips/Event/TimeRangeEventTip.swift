//
//  TimeRangeEventTip.swift
//  TipKitSample
//
//  Created by Melih Çulha on 7.02.2024.
//

import Foundation
import TipKit

struct TimeRangeEventTip: Tip {
    static let timeRangetriggerControlEvent = Event(id: "timeRangetriggerControlEvent")
    
    var title: Text {
        Text("This is a Time Range Event Tip Title")
    }
    
    var message: Text? {
        Text("Time Range Event Tip Message")
    }
    
    var image: Image? {
        Image(systemName: "arrow.up.message")
    }
    
    var rules: [Rule] {
        #Rule(Self.timeRangetriggerControlEvent) {
            // Number of events within a week < 3
            $0.donations.donatedWithin(.week).count < 3
            
            // Number of events within three days > 3
//            $0.donations.donatedWithin(.days(3)).count > 3
        }
    }
}
