import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/josealarconchacon/Dropbox/MindBodyReminder MindBodyReminder MindBodyReminder/MindBodyReminder MindBodyReminder MindBodyReminder/View/ContentView.swift", line: 1)
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
                .navigationTitle(__designTimeString("#4390_0", fallback: "Welcome"))
        }
    }
}


#Preview {
    ContentView()
}
