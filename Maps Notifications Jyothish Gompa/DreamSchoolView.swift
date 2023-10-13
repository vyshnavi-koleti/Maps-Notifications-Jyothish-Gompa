//
//  DreamSchoolView.swift
//  Maps Notifications Jyothish Gompa
//
//  Created by Vyshnavi Koleti on 10/13/23.
//

import SwiftUI

struct DreamSchoolView: View {
    var pushNotifications = PushNotificationService()
    
    var body: some View {
        VStack {
            Text("Harvard Business School")
            
            Button("Enable Push Notifications.") {
                pushNotifications.requestPermission()
            }
            .padding(.vertical, 5)
            
            Button("Remind me to apply.") {
                pushNotifications.scheduleNotification(
                    title: "Dream University",
                    subtitle: "Don't forget to apply!",
                    timeInterval: 5
                )
            }
            
            Button("Remind me to apply later.") {
                pushNotifications.scheduleNotification(
                    title: "Dream University",
                    subtitle: "The deadline is apporaching. Apply soon!",
                    timeInterval: 30
                )
            }
            .padding(.vertical, 5)
            
        }
    }
}

#Preview {
    DreamSchoolView()
}
