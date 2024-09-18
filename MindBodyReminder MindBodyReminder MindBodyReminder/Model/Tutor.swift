//
//  Tutor.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/20/24.
//

import Foundation

struct Tutor: Identifiable {
    let id = UUID()
    let name: String
    let major: String
    let description: String
    let photo: String
    var starRating: Int
    var availableDates: [Date]
}




