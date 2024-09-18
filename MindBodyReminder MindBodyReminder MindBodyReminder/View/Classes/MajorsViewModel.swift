//
//  MajorsViewModel.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/15/24.
//

import Foundation

class MajorsViewModel: ObservableObject {
    @Published var majors: [Major] = []
    
    func fetchMajors() {
        if let url = Bundle.main.url(forResource: "data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decodedResponse = try JSONDecoder().decode(MajorsResponse.self, from: data)
                majors = decodedResponse.majors
            } catch {
                print("Failed to decode JSON: \(error)")
            }
        } else {
            print("JSON file not found")
        }
    }
}

struct Major: Codable, Hashable {
    let name: String
    let description: String
    let classes: [Course]
}

struct Course: Codable, Hashable {
    let courseCode: String
    let courseName: String
    let instructor: String
    let schedule: String
    let semestersOffered: [String]
}

struct MajorsResponse: Codable {
    let majors: [Major]
}

