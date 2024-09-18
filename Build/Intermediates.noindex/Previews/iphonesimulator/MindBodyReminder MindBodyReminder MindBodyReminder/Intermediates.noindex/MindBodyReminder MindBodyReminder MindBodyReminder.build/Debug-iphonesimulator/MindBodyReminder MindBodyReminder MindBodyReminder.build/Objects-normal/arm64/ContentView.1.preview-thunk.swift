@_private(sourceFile: "ContentView.swift") import MindBodyReminder_MindBodyReminder_MindBodyReminder
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josealarconchacon/Dropbox/MindBodyReminder MindBodyReminder MindBodyReminder/MindBodyReminder MindBodyReminder MindBodyReminder/View/ContentView.swift", line: 13)
        NavigationView {
            CollectionView()
                .navigationTitle(__designTimeString("#5689.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: "Welcome"))
        }
    
#sourceLocation()
    }
}

import struct MindBodyReminder_MindBodyReminder_MindBodyReminder.ContentView
#Preview {
    ContentView()
}



