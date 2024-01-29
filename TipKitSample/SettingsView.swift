//
//  ContentView.swift
//  TipKitSample
//
//  Created by Melih Çulha on 7.09.2023.
//

import SwiftUI
import TipKit

struct SettingsView: View {
    @AppStorage("isNotificationsEnabled")
    private var isNotificationEnabled = false
    
    @AppStorage("isSleepTrackingEnabled")
    private var isSleepTrackingEnabled = true
    
    @AppStorage("sleepTrackingMode")
    private var sleepTrackingMode = SleepTrackingMode.moderate.rawValue
    
    @AppStorage("sleepGoal")
    private var sleepGoal = 8
    
    private let unlockProTip = UnlockProTip()
    private let restoreTip = RestoreTip()
    private let notificationTip = NotificationTip()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Notifications settings")) {
                    Toggle(isOn: $isNotificationEnabled) {
                        Text("Notification:")
                    }
                    TipView(notificationTip, arrowEdge: .top)
                }

                Section(header: Text("Sleep tracking settings")) {
                    Toggle(isOn: $isSleepTrackingEnabled) {
                        Text("Sleep tracking:")
                    }

                    Picker(
                        selection: $sleepTrackingMode,
                        label: Text("Sleep tracking mode")
                    ) {
                        ForEach(SleepTrackingMode.allCases, id: \.self) {
                            Text($0.rawValue).tag($0.rawValue)
                        }
                    }
                    .pickerStyle(.navigationLink)

                    Stepper(value: $sleepGoal, in: 6...12) {
                        Text("Sleep goal is \(sleepGoal) hours")
                    }
                }
                
                Section {
                    TipView(unlockProTip, arrowEdge: .bottom)
                        .tipViewStyle(CustomTipStyle())
                    Button("Unlock PRO") {
                        withAnimation {
                            UnlockProTip.tipShown = true
                        }
                    }
                    
                    
                    TipView(restoreTip, arrowEdge: .bottom)
                    Button("Restore purchase") {
                        withAnimation {
                            RestoreTip.isRestored.toggle()
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Settings"))
            .onChange(of: isNotificationEnabled) { oldValue, newValue in
                withAnimation {
                    NotificationTip.isNotificationTipShown = true
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

enum SleepTrackingMode: String, CaseIterable {
    case low = "low"
    case moderate = "moderate"
    case aggressive = "aggressive"
}
