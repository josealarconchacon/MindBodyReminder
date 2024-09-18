//
//  ContentView.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/14/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            CollectionView()
                .navigationTitle("Welcome")
        }
    }
}


#Preview {
    ContentView()
}
