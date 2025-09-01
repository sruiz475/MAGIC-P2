//
//  XP.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/22/25.
//

import SwiftUI

struct XP: View {
    @EnvironmentObject var xpManager: XPManager
    var body: some View {
        ZStack{
            Color(red: 0.75, green: 0.90, blue: 0.98)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Total XP: \(xpManager.xp)")
                    .font(.title)
                
                Text("Badges Earned")
                    .font(.headline)
                
                if xpManager.badges.isEmpty {
                    Text("No badges yet!")
                } else {
                    ForEach(xpManager.badges, id: \.self) { badge in
                        Text(badge)
                            .font(.title2)
                    }
                }
                
            }
            .padding()
            .navigationTitle("Your Progress")
            
        }
    }
}

#Preview {
//    XP(xpManager: XPManager())
    XP()
        .environmentObject(XPManager())
}
