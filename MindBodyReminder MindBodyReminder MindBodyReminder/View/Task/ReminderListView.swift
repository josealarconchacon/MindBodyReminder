//
//  ReminderListView.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/16/24.
//

import SwiftUI

struct ReminderListView: View {
    @StateObject private var viewModel = ReminderViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.reminders) { reminder in
                    NavigationLink(destination: ReminderDetailView(viewModel: viewModel, reminder: reminder)) {
                        VStack(alignment: .leading) {
                            Text(reminder.title)
                                .font(.headline)
                            Text(reminder.description)
                                .font(.subheadline)
                            Text(reminder.priority.rawValue)
                                .font(.caption)
                                .foregroundColor(.gray)
                            Text("\(reminder.date, formatter: DateFormatter.shortDate)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .onDelete { indices in
                    indices.forEach { viewModel.delete_reminder(viewModel.reminders[$0]) }
                }
            }
            
            NavigationLink(destination: AddEditReminderView(viewModel: viewModel)) {
                Text("Add Reminder")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .navigationTitle("Reminders")
        .toolbar {
            EditButton()
        }
    }
}

extension DateFormatter {
    static var shortDate: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
}
