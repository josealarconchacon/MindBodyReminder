//
//  AddEditReminderView.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/16/24.
//

import SwiftUI

struct AddEditReminderView: View {
    @ObservedObject var viewModel: ReminderViewModel
    @State private var title = ""
    @State private var description = ""
    @State private var priority: Reminder.Priority = .medium
    @State private var date = Date()
    
    var body: some View {
        Form {
            TextField("Title", text: $title)
            TextField("Description", text: $description)
            Picker("Priority", selection: $priority) {
                ForEach(Reminder.Priority.allCases, id: \.self) { priority in
                    Text(priority.rawValue).tag(priority)
                }
            }
            DatePicker("Date", selection: $date)
            
            Button("Add Reminder") {
                let reminder = Reminder(title: title, description: description, priority: priority, date: date)
                viewModel.add_reminder(reminder)
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .navigationTitle("Add Reminder")
    }
}

