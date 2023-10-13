//
//  PushNotificationService.swift
//  Maps Notifications Jyothish Gompa
//
//  Created by Vyshnavi Koleti on 10/13/23.
//

import Foundation
import NotificationCenter

class PushNotificationService {
    var permission = false
    
    func requestPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
            if success {
                self.permission = true
            }
            else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    func scheduleNotification(title: String, subtitle: String, timeInterval: TimeInterval) {
            let notificationContent = UNMutableNotificationContent()
            notificationContent.title = title
            notificationContent.subtitle = subtitle

            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: timeInterval, repeats: false)
            
            let notificationRequest = UNNotificationRequest(identifier: UUID().uuidString, content: notificationContent, trigger: trigger)

            UNUserNotificationCenter.current().add(notificationRequest)
    }
    
    func clearNotifications() {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
    }
}
