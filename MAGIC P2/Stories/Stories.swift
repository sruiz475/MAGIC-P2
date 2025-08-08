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
                ZStack{
                    Color(.lightGray)
                        .ignoresSafeArea()
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
                            .navigationBarBackButtonHidden()
        
                        NavigationLink(destination: Story1()) {
                            Text("Story 1")
                                .modifier(HeaderStyle())
                        }
        
                        Spacer()
        
                    }
                }
        
//        var body: some View {
//            NavigationView {
//                VStack {
//                    NavigationLink(destination: AddStory()) {
//                        Text("Add Story")
//                            .modifier(HeaderStyle())
//                    }
//                    
//                    if storyManager.stories.isEmpty {
//                        Text("No stories yet.")
//                            .foregroundColor(.gray)
//                            .padding()
//                    }
//                    
//                    List {
//                        ForEach(storyManager.stories) { story in
//                            VStack(alignment: .leading, spacing: 4) {
//                                Text(story.title)
//                                    .font(.headline)
//                                Text("Genre: \(story.genre)")
//                                    .font(.subheadline)
//                                Text(story.plot)
//                                    .font(.body)
//                                    .lineLimit(3)
//                            }
//                            .padding(.vertical, 6)
//                        }
//                        .onDelete { indexSet in
//                            indexSet.forEach { index in
//                                let story = storyManager.stories[index]
//                                storyManager.deleteStory(story)
//                            }
//                        }
//                    }
//                    
//                }
//                .navigationTitle("Your Stories")
//                .toolbar {
//                    EditButton() // Adds the Edit button to the nav bar
//                }
//                
//            }
//        }
//        
   }
}

#Preview {
    Stories()
        .environmentObject(StoryManager())
}
