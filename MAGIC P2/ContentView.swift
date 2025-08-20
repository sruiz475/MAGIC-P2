//
//  ContentView.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/8/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var storyManager: StoryManager
    @StateObject private var xpManager = XPManager()
    var body: some View {
        NavigationStack{
            ZStack {
                Color(.lightGray)
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
                        
                        NavigationLink(destination: Minutes(xpManager: XPManager())) {
                            Text("Minutes")
                                .modifier(HeaderStyle())
                        }
                        
                        NavigationLink(destination: XP(xpManager: XPManager())) {
                            Text("XP").modifier(HeaderStyle())
                            
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
}
