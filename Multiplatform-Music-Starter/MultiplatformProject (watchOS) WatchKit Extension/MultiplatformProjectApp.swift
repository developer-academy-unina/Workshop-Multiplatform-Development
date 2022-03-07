//
//  MultiplatformProjectApp.swift
//  MultiplatformProject (watchOS) WatchKit Extension
//
//  Created by Luca Palmese for the Developer Academy on 09/02/22.
//

import SwiftUI

@main
struct MultiplatformProjectApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            WatchEntryView()
        }
        
        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
