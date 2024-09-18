//
//  ReminderDetailView.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/16/24.
//

import SwiftUI

struct ReminderDetailView: View {
    @ObservedObject var viewModel: ReminderViewModel
    @State private var reminder: Reminder
    
    init(viewModel: ReminderViewModel, reminder: Reminder) {
        _viewModel = ObservedObject(wrappedValue: viewModel)
        _reminder = State(initialValue: reminder)
    }
    
    var body: some View {
        Form {
            TextField("Title", text: $reminder.title)
            TextField("Description", text: $reminder.description)
            Picker("Priority", selection: $reminder.priority) {
                ForEach(Reminder.Priority.allCases, id: \.self) { priority in
                    Text(priority.rawValue).tag(priority)
                }
            }
            DatePicker("Date", selection: $reminder.date)
            
            Button("Save") {
                viewModel.update_reminder(reminder)
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .navigationTitle("Edit Reminder")
    }
}
