//
//  Characters.swift
//  MAGIC P2
//
//  Created by sruiz25 on 7/22/25.
//

import SwiftUI
struct Characters: View {
    var storyID: UUID
    @EnvironmentObject var storyManager: StoryManager
    @State private var newCharacterName = ""
    var body: some View {
        
            if let story = storyManager.stories.first(where: { $0.id == storyID }) {
                // List of characters with swipe-to-delete
                VStack {
                    List {
                        ForEach(story.char, id: \.self) { character in
                            Text(character)
                        }
                        .onDelete { offsets in
                            storyManager.removeCharacter(at: offsets, from: storyID)
                        }
                    }
                    
                    // Add new character section
                    HStack {
                        TextField("New character name", text: $newCharacterName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.leading)
                        
                        Button("Add") {
                            let trimmedName = newCharacterName.trimmingCharacters(in: .whitespaces) // removes leading & trailing whitespace
                            if !(trimmedName.isEmpty) {
                                storyManager.addChar(trimmedName, to: storyID)
                                newCharacterName = ""
                            }
                        }
                        .padding(.trailing)
                        .buttonStyle(.borderedProminent)
                    }
                    .padding(.bottom)
                }
                .navigationTitle("\(story.title) Characters")
                .toolbar {
                    EditButton()
                }
            }
            
            else {
                Text("Story not found")
                    .foregroundColor(.red)
            }
    }
}


#Preview {
    Characters(storyID: StoryManager().stories[0].id)
        .environmentObject(StoryManager())
}
