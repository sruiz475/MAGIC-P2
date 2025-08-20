//
//  MAGIC_P2App.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/8/25.
//

import SwiftUI

@main
struct MAGIC_P2App: App {
    @StateObject private var storyManager = StoryManager()
//    @StateObject private var xpManager = XPManager()
    private var char: [String] = []
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(storyManager)
        }
    }
}
