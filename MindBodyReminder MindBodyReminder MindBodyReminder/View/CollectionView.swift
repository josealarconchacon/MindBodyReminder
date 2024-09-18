//
//  CollectionView.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/14/24.
//

import SwiftUI

struct CollectionView: View {
    @StateObject private var viewModel = MajorsViewModel()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(items, id: \.self) { item in
                    if item.label == "Classes" {
                        NavigationLink(destination: ClassesView(viewModel: viewModel)) {
                            CollectionViewCell(imageName: item.imageName, label: item.label)
                        }
                        .buttonStyle(PlainButtonStyle())
                    } else if item.label == "Remainders" {
                        NavigationLink(destination: ReminderListView()) {
                            CollectionViewCell(imageName: item.imageName, label: item.label)
                        }
                        .buttonStyle(PlainButtonStyle())
                    } else if item.label == "Tutoring" {
                        NavigationLink(destination: TutorListView()) {
                            CollectionViewCell(imageName: item.imageName, label: item.label)
                        }
                    } else if item.label == "Mindfulness" {
                        NavigationLink(destination: MeditationView()) {
                            CollectionViewCell(imageName: item.imageName, label: item.label)
                        }
                        .buttonStyle(PlainButtonStyle())
                    } else if item.label == "Resources" {
                        NavigationLink(destination: StudentResources()) {
                            CollectionViewCell(imageName: item.imageName, label: item.label)
                        }
                        .buttonStyle(PlainButtonStyle())
                    } else if item.label == "Sports Center" {
                        NavigationLink(destination: SportCenter()) {
                            CollectionViewCell(imageName: item.imageName, label: item.label)
                        }
                    } else {
                        NavigationLink(destination: DestinationView(selectedItem: item)) {
                            CollectionViewCell(imageName: item.imageName, label: item.label)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
            .padding()
            .onAppear {
                viewModel.fetchMajors()
            }
        }
    }
}


struct DestinationView: View {
    let selectedItem: Item
    
    var body: some View {
        VStack {
            Text("\(selectedItem.label)")
                .font(.largeTitle)
                .padding()
            Image(selectedItem.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .padding()
        }
        .navigationTitle(selectedItem.label)
        .navigationBarTitleDisplayMode(.inline)
    }
}

