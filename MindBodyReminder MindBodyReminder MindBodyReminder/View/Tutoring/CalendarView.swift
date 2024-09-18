//
//  CalendarView.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/20/24.
//

import SwiftUI

struct CalendarView: View {
    let dates: [Date]
    
    var body: some View {
        List {
            ForEach(dates, id: \.self) { date in
                Text(format_date(date))
            }
        }
        .navigationTitle("Available Dates")
    }
    
    private func format_date(_ date: Date) -> String {
        let date_formatter = DateFormatter()
        date_formatter.dateStyle = .long
        date_formatter.timeStyle = .short
        return date_formatter.string(from: date)
    }
}



extension Array where Element == Date {
    func random_times() -> [Date] {
        var unique_dates: [Date] = []
        for date in self {
            var random_date = date.random_time()
            while unique_dates.contains(random_date) {
                random_date = date.random_time()
            }
            unique_dates.append(random_date)
        }
        return unique_dates
    }
}

extension Date {
    func random_time() -> Date {
        let calendar = Calendar.current
        let start_of_day = calendar.startOfDay(for: self)
        let lower_bound_seconds = 8 * 60 * 60 // 8 am in seconds
        let upper_bound_seconds = 20 * 60 * 60 // 8 pm in seconds
        let random_seconds = Int.random(in: lower_bound_seconds ..< upper_bound_seconds)
        return start_of_day.addingTimeInterval(TimeInterval(random_seconds))
    }
}





