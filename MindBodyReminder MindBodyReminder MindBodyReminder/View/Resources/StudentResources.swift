//
//  StudentResources.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/30/24.
//

import SwiftUI

struct StudentResources: View {
    let categories = [
        ReourcesCategory(name: "Student Affairs", url: "https://www.laguardia.edu/student-affairs/"),
        ReourcesCategory(name: "Transfer Services", url: "https://laguardia.catalog.cuny.edu/student-programs-and-services/student-services/overview"),
        ReourcesCategory(name: "College Discovery", url: "https://www.laguardia.edu/cd/"),
        ReourcesCategory(name: "Academic assessment", url: "https://laguardia.catalog.cuny.edu/student-programs-and-services/student-services/student-communication-resources"),
        ReourcesCategory(name: "Supporting student wellness", url: "https://laguardia.catalog.cuny.edu/student-programs-and-services/student-services/overview"),
        ReourcesCategory(name: "Center of Teaching/Learning", url: "https://library.laguardia.edu/research/alphabetical/"),
        ReourcesCategory(name: "Helping Students in Distress", url: "https://www.laguardia.edu/helping-students-in-distress/")
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 15) {
                    ForEach(categories) { category in
                        Link(destination: URL(string: category.url)!) {
                            HStack(spacing: 15) {
                                Image(systemName: "doc.richtext.fill")
                                    .font(.system(size: 40))
                                    .foregroundColor(.blue)
                                Text(category.name)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.primary)
                                    .multilineTextAlignment(.center)
                                Spacer()
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color(.systemBackground))
                                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                            )
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding(.horizontal)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 10)
            }
            .navigationTitle("Resources")
            .navigationBarItems(trailing:
                    Button(action: {
                        let url = URL(string: "https://www.laguardia.edu/students/student-resources/")!
                            UIApplication.shared.open(url) }) {
                                Text("View All Resources")
                            }
            )
        }
        .accentColor(.blue)
    }
}
