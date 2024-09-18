//
//  ClassesView.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/15/24.
//

import SwiftUI

struct ClassesView: View {
    @ObservedObject var viewModel: MajorsViewModel
    @State private var selected_major: Major?
    @State private var is_showing_major_classes = false
    
    var body: some View {
        List(viewModel.majors, id: \.self) { major in
            Section(header: Text(major.name)) {
                Button(action: {
                    selected_major = major
                    is_showing_major_classes = true
                }) {
                    Text(major.description)
                }
                .foregroundColor(.black)
            }
        }
        .navigationTitle("Classes")
        .sheet(isPresented: $is_showing_major_classes) {
            if let major = selected_major {
                NavigationView {
                    MajorClassesView(major: major)
                }
            }
        }
    }
}
