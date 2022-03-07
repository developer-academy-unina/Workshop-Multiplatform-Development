//
//  MultiplatformProjectApp.swift
//  MultiplatformProject (watchOS) WatchKit Extension
//
//  Created by Luca Palmese for the Developer Academy on 09/02/22.
//

import SwiftUI

// MARK: This entry file is targeted for Apple Watch only and will be compiled exclusively only when the app is launched on that specific platform. All the files targeted with other platforms will not be compiled in this case.

@main
struct MultiplatformProjectApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            WatchEntryView()
        }
        
        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
