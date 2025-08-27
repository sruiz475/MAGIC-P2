//
//  Stories.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/29/25.
//

import SwiftUI
struct Stories: View {
    @EnvironmentObject var storyManager: StoryManager
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(red: 0.75, green: 0.90, blue: 0.98)
                    .ignoresSafeArea()
                
                VStack {
                    NavigationLink(destination: AddStory()) {
                        Text("Add Story")
                            .modifier(HeaderStyle())
                            .padding()  // ADDED - makes WHOLE bg color show right
                    }
                    if storyManager.stories.isEmpty {
                        Text("No stories yet.")
                            .foregroundColor(.gray)
                            .padding()
                    }
                    
                    List {
                        ForEach(storyManager.stories) { story in
                            VStack(alignment: .leading, spacing: 4) {
                                Text(story.title)
                                    .font(.headline)
                                Text("Genre: \(story.genre)")
                                    .font(.subheadline)
                                Text(story.plot)
                                    .font(.body)
                                    .lineLimit(3)
                                
                                NavigationLink(destination: Characters(storyID: story.id)) {
                                    Text("\(story.title) Characters")
                                        .foregroundColor(.purple)
                                }
                                
                            }
                            .padding(.vertical, 6)
                        }
                        .onDelete { indexSet in
                            indexSet.forEach { index in
                                let story = storyManager.stories[index]
                                storyManager.deleteStory(story)
                            }
                        }
                        
                    }
                    .scrollContentBackground(.hidden)
                    .background(Color.clear)
                }
            }
            .navigationTitle("Your Stories")
            .toolbar {
                EditButton() // Adds the Edit button to the nav bar
            }
                
        }
    }
}

         
#Preview {
    Stories()
        .environmentObject(StoryManager())
}
