//
//  StoriesClass.swift
//  MAGIC P2
//
//  Created by sruiz25 on 8/1/25.
//

import Foundation
import SwiftUI
import CoreLocation
struct Story: Identifiable, Codable {
    var id = UUID()
    var title: String
    var genre: String
    var plot: String
    var char: [String]
}
class StoryManager: ObservableObject {
    @Published var stories: [Story] = [] {
        didSet {
            saveStories()
        }
    }
    private let saveKey = "SavedStories"
    init() {
        loadStories()
    }
    func addStory(title: String, genre: String, plot: String) {
        let newStory = Story(title: title, genre: genre, plot: plot, char: [])
        stories.append(newStory)       // stories list holds newStory, which is a Story object defined by our Story class
    }
    private func saveStories() {    // encodes data of new story as a json file, with key to access
        if let encoded = try? JSONEncoder().encode(stories) {
            UserDefaults.standard.set(encoded, forKey: saveKey)
        }
    }
    private func loadStories() {    // uses key to access a certain story already made
        if let data = UserDefaults.standard.data(forKey: saveKey),
           let decoded = try? JSONDecoder().decode([Story].self, from: data) {
            stories = decoded
        }
    }
    func deleteStory(_ story: Story) {
            if let index = stories.firstIndex(where: { $0.id == story.id }) {
                stories.remove(at: index)
                saveStories()
            }
        }
    func addChar(_ name: String, to storyID: UUID) {
        if let index = stories.firstIndex(where: { $0.id == storyID }) {
            stories[index].char.append(name)
        }
    }
    
    func removeCharacter(at indexSet: IndexSet, from storyID: UUID) {
        guard let storyIndex = stories.firstIndex(where: { $0.id == storyID }) else { return }
        stories[storyIndex].char.remove(atOffsets: indexSet)
    }

}

