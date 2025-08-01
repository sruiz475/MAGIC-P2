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
        let newStory = Story(title: title, genre: genre, plot: plot)
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
}

