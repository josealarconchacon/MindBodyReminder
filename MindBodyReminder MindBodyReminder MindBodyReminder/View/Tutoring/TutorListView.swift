//
//  TutorListView.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/20/24.
//

import SwiftUI

struct TutorListView: View {
    @ObservedObject var viewModel = TutorsViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.tutors.indices, id: \.self) { index in
                    let tutorsForMajor = viewModel.tutors[index]
                    Section(header: Text(tutorsForMajor.first?.major ?? "")) {
                        ForEach(tutorsForMajor) { tutor in
                            TutorCellView(tutor: tutor)
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline) // Adjust navigation title position
            .onAppear {
                viewModel.fetchTutors()
            }
        }
        .navigationTitle("Tutors")
    }
}

