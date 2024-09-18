//
//  Reminder.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/16/24.
//

import Foundation

struct Reminder: Identifiable, Codable {
    var id = UUID()
    var title: String
    var description: String
    var priority: Priority
    var date: Date
    
    enum Priority: String, CaseIterable, Codable {
        case high = "High"
        case medium = "Medium"
        case low = "Low"
    }
}
