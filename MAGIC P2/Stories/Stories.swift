//
//  Stories.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/8/25.
//

import SwiftUI

struct Stories: View {
    var body: some View {
        VStack{
        Text("Stories Page")
        .navigationTitle("Main Menu")
        NavigationLink(destination: Plot()) {
            Text("Plot")
                .modifier(HeaderStyle())
                
        }
        
        
        
        NavigationLink(destination: WordsTyped()) {
            Text("Characters")
                .modifier(HeaderStyle())
        }
        
      
        
            NavigationLink(destination: XP()) {
                Text("XP").modifier(HeaderStyle())
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.teal.opacity(0.3)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    Stories()
}
