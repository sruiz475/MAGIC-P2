//
//  ContentView.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            Image("typewriter")
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
            VStack {
                Text("Welcome!")
                    .font(.largeTitle.bold())
                Spacer()
                
                
                
                
                NavigationLink(destination: Stories()) {
                    Text("Stories")
                        .modifier(HeaderStyle())
                        
                }
                
                
                
                NavigationLink(destination: WordsTyped()) {
                    Text("Words Typed")
                        .modifier(HeaderStyle())
                }
                
              
                
                NavigationLink(destination: Points()) {
                    Text("Points").modifier(HeaderStyle())
                        
                }
                Spacer()
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
     }
}
#Preview {
    ContentView()
}
