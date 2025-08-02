//
//  Stories.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/29/25.
//

import SwiftUI

struct Stories: View {
    var body: some View {
        VStack {
            Image("books")
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
            
            Text("Your Stories")
                .font(.largeTitle.bold())
                .navigationTitle("Stories")
            
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

#Preview {
    Stories()
}
