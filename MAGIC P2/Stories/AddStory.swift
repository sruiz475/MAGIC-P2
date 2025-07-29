//
//  AddStory.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/29/25.
//

import SwiftUI

struct AddStory: View {
    @State private var genre = ""
    @State private var plot = ""
    var body: some View {
        VStack{
            Image("questionmarks")
                .resizable()
                .scaledToFit()
                .cornerRadius(40)
            
            Spacer()
            
            NavigationLink(destination: ContentView()) {
                Text("Home Page")
                    .modifier(HeaderStyle())
            }
            NavigationLink(destination: Stories()) {
                Text("Story Page")
                    .modifier(HeaderStyle())
            }
            Text("What genre?")
                .font(.headline)
            
            TextField("Enter genre", text: $genre)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            if !genre.isEmpty {
                Text("Great! Now, what's the plot?")
                    .font(.headline)
                
                TextField("Enter plot", text: $plot)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    AddStory()
}
