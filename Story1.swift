//
//  Story1.swift
//  MAGIC P2
//
//  Created by sruiz25 on 8/6/25.
//

import SwiftUI

struct Story1: View {
    @EnvironmentObject var storyManager: StoryManager
    
    
    var body: some View {
        ZStack{
            Color(.lightGray)
                .ignoresSafeArea()
            VStack {
                Image("typewriter")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(40)
                
                Spacer()
                
                NavigationLink(destination: ContentView()) {
                    Text("Home Page")
                        .modifier(HeaderStyle())
                }
                
                Text(storyManager.stories[0].title)
                    .font(.largeTitle.bold())
                    .navigationTitle("Story 1")
                    .navigationBarBackButtonHidden()
                
                    
                    
                    Text("Genre: \(storyManager.stories[0].genre)")
                        
                    Text(storyManager.stories[0].plot)
                        
                
                NavigationLink(destination: Characters()) {
                    Text("Character")
                        .modifier(HeaderStyle())
                }
                
                NavigationLink(destination: XP()) {
                    Text("XP")
                        .modifier(HeaderStyle())
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    Story1()
        .environmentObject(StoryManager())
}
