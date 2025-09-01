//
//  ContentView.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/8/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var storyManager: StoryManager
    @EnvironmentObject var xpManager: XPManager
    var body: some View {
        NavigationStack{
            ZStack {
                Color(red: 0.75, green: 0.90, blue: 0.98)
                    .ignoresSafeArea()
                VStack {
                    
                    Image("typewriter")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                    Text("Welcome!")
                        .navigationTitle("Main Menu")
                        .font(.largeTitle.bold())
                        .navigationBarBackButtonHidden()
                    Spacer()
                    
                        NavigationLink(destination: Stories()) {
                            Text("Stories")
                                .modifier(HeaderStyle())
                        }
                        
                        NavigationLink(destination: Minutes()) {
                            Text("Minutes")
                                .modifier(HeaderStyle())
                        }
                        
                        NavigationLink(destination: XP()) {
                            Text("XP").modifier(HeaderStyle())
                            
                        }
                    Spacer()
                    
                    Button("Clear"){
                        xpManager.clearBadges()
                    }
                    
                    
                        Spacer()
                        
                    }
                    .padding()
                }
                
            }
        }
    }
struct HeaderStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .fontWeight(.black)
            .foregroundColor(.black)
            .padding(5.0)
            .border(Color.black, width: 2)
            .cornerRadius(5)
            .background(Color.white)
    }
}
#Preview {
    ContentView()
        .environmentObject(StoryManager())
        .environmentObject(XPManager())
}
