//
//  xpClass.swift
//  MAGIC P2
//
//  Created by sruiz25 on 8/19/25.
//

import Foundation
import SwiftUI
class XPManager: ObservableObject {
    @Published var totalMinutes: Int {
        didSet {
            UserDefaults.standard.set(totalMinutes, forKey: "totalMinutes")
        }
    }
    
    @Published var manualBadges: [String] {
        didSet {
            UserDefaults.standard.set(manualBadges, forKey: "manualBadges")
        }
    }
    
    init() {
        self.totalMinutes = UserDefaults.standard.integer(forKey: "totalMinutes")
        self.manualBadges = UserDefaults.standard.stringArray(forKey: "manualBadges")  ?? []
    }
    
    // 1 min : 2 XP ratio
    var xp: Int {
        totalMinutes * 2
    }
    
    // Badge system - to replace with names of the badges (can include emojis)
    var badges: [String] {
        var result: [String] = []
        if xp >= 40 { result.append("🥉") }
        if xp >= 80 { result.append("🥈") }
        if xp >= 160 { result.append("🥇") }
        if xp >= 320 { result.append("🏆") }
        
        result.append(contentsOf: manualBadges)
        return result
    }
    
}

