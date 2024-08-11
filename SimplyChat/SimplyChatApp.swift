//
//  SimplyChatApp.swift
//  SimplyChat
//
//  Created by Kyle-Anthony Hay on 5/23/24.
//

import SwiftUI
import Firebase

@main
struct SimplyChatApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
      
