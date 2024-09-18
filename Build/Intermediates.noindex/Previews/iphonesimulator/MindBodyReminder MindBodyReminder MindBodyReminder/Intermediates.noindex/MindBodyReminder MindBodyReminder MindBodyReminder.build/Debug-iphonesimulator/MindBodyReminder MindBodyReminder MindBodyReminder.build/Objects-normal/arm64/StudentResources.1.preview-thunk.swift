@_private(sourceFile: "StudentResources.swift") import MindBodyReminder_MindBodyReminder_MindBodyReminder
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/josealarconchacon/Dropbox/MindBodyReminder MindBodyReminder MindBodyReminder/MindBodyReminder MindBodyReminder MindBodyReminder/View/Resources/StudentResources.swift", line: 28)
        StudentResources(categories: categories)
    
#sourceLocation()
    }
}

extension StudentResources {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josealarconchacon/Dropbox/MindBodyReminder MindBodyReminder MindBodyReminder/MindBodyReminder MindBodyReminder MindBodyReminder/View/Resources/StudentResources.swift", line: 14)
        NavigationView {
            List(categories) { category in
                Link(destination: URL(string: category.url)!) {
                    Text(category.name)
                        .foregroundColor(.blue)
                }
            }
            .navigationTitle(__designTimeString("#10264.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: "Categories"))
        }
    
#sourceLocation()
    }
}

import struct MindBodyReminder_MindBodyReminder_MindBodyReminder.StudentResources
import struct MindBodyReminder_MindBodyReminder_MindBodyReminder.ContentView_Previews

