//
//  TutorCellView.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/20/24.
//

import SwiftUI

struct TutorCellView: View {
    let tutor: Tutor
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(tutor.photo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(tutor.name)
                        .font(.headline)
                    Text(tutor.description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            
            HStack {
                ForEach(0..<tutor.starRating, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
            }
            
            NavigationLink(destination: CalendarView(dates: tutor.availableDates)) {
                Image(systemName: "calendar")
                    .foregroundColor(.blue)
            }
        }
        .padding()
    }
}


