//
//  BackgroundTask.swift
//  Smart_position_system
//
//  Created by Holung Cheng on 30/10/2024.
//


import SwiftUI
import UserNotifications
import Firebase
import BackgroundTasks


struct BackgroundTask: View {
    var body: some Scene {
        WindowGroup{
            ContentView()
        }
        .backgroundTask(.appRefresh("Streaming"))
            
        }
        
    }
}

#Preview {
    BackgroundTask()
}
