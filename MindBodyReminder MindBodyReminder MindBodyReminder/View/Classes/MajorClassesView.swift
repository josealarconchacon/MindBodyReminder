//
//  MajorClassesView.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/15/24.
//

import SwiftUI

struct MajorClassesView: View {
    let major: Major
    
    var body: some View {
        List(major.classes, id: \.self) { course in
            VStack(alignment: .leading) {
                Text(course.courseName)
                    .font(.headline)
                Text(course.instructor)
                    .font(.subheadline)
                Text(course.schedule)
                    .font(.footnote)
                Text("[\(course.semestersOffered.joined(separator: " - "))]")
                    .font(.footnote)
            }
        }
        .navigationTitle(major.name)
    }
}
