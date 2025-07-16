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
                        .fontWeight(.black)
                        .foregroundColor(.black)
                        .padding(4.0)
                }
                
                
                
                NavigationLink(destination: WordsTyped()) {
                    Text("Words Typed")
                        .fontWeight(.black)
                        .foregroundColor(.black)
                        .padding(5.0)
                }
                
                Spacer()
                
            
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
