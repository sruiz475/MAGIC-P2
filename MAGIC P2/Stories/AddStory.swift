//
//  AddStory.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/29/25.
//

import SwiftUI

struct AddStory: View {
    @EnvironmentObject var storyManager: StoryManager
    @Environment(\.dismiss) var dismiss
    @State private var genre = ""
    @State private var plot = ""
    @State private var title = ""
    
    var body: some View {
        ScrollView {
            
            Image("questionmarks")
                .resizable()
                .scaledToFit()
                .cornerRadius(40)
            Text("Add Story")
                .navigationTitle("Add Story")
                .font(.largeTitle.bold())
            
            Spacer()
            
            NavigationLink(destination: ContentView()) {
                Text("Home Page")
                    .modifier(HeaderStyle())
            }
            NavigationLink(destination: Stories()) {
                Text("Story Page")
                    .modifier(HeaderStyle())
            }
            NavigationLink(destination: Story1()) {
                Text("Story 1")
                    .modifier(HeaderStyle())
            }
            NavigationView{
                Form{
                    TextField("Title", text: $title)

                    Text("What genre?")
                        .font(.headline)
                    
                    TextField("Enter genre", text: $genre)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    if !genre.isEmpty {
                        Text("Great! Now, what's the plot?")
                            .font(.headline)
                        
                        TextEditor(text: $plot)
                            .frame(height: 150)
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray.opacity(0.4)))
                        Button("Save Story") {
                            storyManager.addStory(title: title, genre: genre, plot: plot)
                            dismiss()
                        }
                        .disabled(title.isEmpty || genre.isEmpty || plot.isEmpty)
                    }
                }
            }
        }
    }
}

#Preview {
    AddStory()
}
