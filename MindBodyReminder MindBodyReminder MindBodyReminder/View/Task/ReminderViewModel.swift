//
//  ReminderViewModel.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/16/24.
//

import Foundation

class ReminderViewModel: ObservableObject {
    @Published var reminders: [Reminder] = [] {
        didSet {
            save_reminders()
        }
    }
    
    private let saveKey = "Reminders"
    
    init() {
        load_reminders()
    }
    
    func add_reminder(_ reminder: Reminder) {
        reminders.append(reminder)
    }
    
    func update_reminder(_ reminder: Reminder) {
        if let index = reminders.firstIndex(where: { $0.id == reminder.id }) {
            reminders[index] = reminder
        }
    }
    
    func delete_reminder(_ reminder: Reminder) {
        reminders.removeAll { $0.id == reminder.id }
    }
    
    private func save_reminders() {
        if let encoded = try? JSONEncoder().encode(reminders) {
            UserDefaults.standard.set(encoded, forKey: saveKey)
        }
    }
    
    private func load_reminders() {
        if let savedData = UserDefaults.standard.data(forKey: saveKey),
           let decodedReminders = try? JSONDecoder().decode([Reminder].self, from: savedData) {
            reminders = decodedReminders
        }
    }
}

