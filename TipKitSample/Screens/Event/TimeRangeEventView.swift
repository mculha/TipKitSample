//
//  TimeRangeEventView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 7.02.2024.
//

import SwiftUI
import TipKit

struct TimeRangeEventView: View {
    var body: some View {
        VStack(spacing: 10) {
            
            Text("To hide a Tip Click the Button 3 Times. The tip is going to be shown every week")
            
            TipView(TimeRangeEventTip(), arrowEdge: .bottom)
            
            Button("Simple Event Button") {
                Task { await TimeRangeEventTip.timeRangetriggerControlEvent.donate() }
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    TimeRangeEventView()
}
