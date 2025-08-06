//
//  Story1.swift
//  MAGIC P2
//
//  Created by sruiz25 on 8/6/25.
//

import SwiftUI

struct Story1: View {
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
                NavigationLink(destination: AddStory()) {
                    Text("Add Story")
                        .modifier(HeaderStyle())
                }
                
                Text("Story 1")
                    .font(.largeTitle.bold())
                    .navigationTitle("Story 1")
                    .navigationBarBackButtonHidden()
                
                NavigationLink(destination: Plot()) {
                    Text("Plot")
                        .modifier(HeaderStyle())
                }
                
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
}
