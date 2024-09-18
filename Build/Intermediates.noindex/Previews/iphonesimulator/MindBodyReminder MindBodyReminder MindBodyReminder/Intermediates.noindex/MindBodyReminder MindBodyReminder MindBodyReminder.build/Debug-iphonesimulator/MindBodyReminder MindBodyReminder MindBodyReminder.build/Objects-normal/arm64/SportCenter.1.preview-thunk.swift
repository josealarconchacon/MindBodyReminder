@_private(sourceFile: "SportCenter.swift") import MindBodyReminder_MindBodyReminder_MindBodyReminder
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension SportCenter {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josealarconchacon/Dropbox/MindBodyReminder MindBodyReminder MindBodyReminder/MindBodyReminder MindBodyReminder MindBodyReminder/View/Sport/SportCenter.swift", line: 35)
        ScrollView {
            VStack(spacing: __designTimeInteger("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 5)) {
                ForEach(items) { item in
                    VStack(alignment: .leading, spacing: __designTimeInteger("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[1].value", fallback: 1)) {
                        Image(item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: __designTimeInteger("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value", fallback: 300), height: __designTimeInteger("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[1].value", fallback: 120))
                            .padding()
                            .background(Color.blue.opacity(__designTimeFloat("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 0.1)))
                            .cornerRadius(__designTimeInteger("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[5].arg[0].value", fallback: 15))
                        
                        Text(item.name)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text(item.details)
                            .font(.body)
                            .foregroundColor(.gray)
                        
                        if let bookingURL = item.bookingURL { // Check if booking URL is available
                            Link(destination: bookingURL) {
                                Text(__designTimeString("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[0].arg[0].value", fallback: "Reserve Now"))
                                    .fontWeight(.bold)
                                    .padding(.vertical, __designTimeInteger("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 10))
                                    .padding(.horizontal, __designTimeInteger("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 20))
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(__designTimeInteger("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[0].modifier[5].arg[0].value", fallback: 10))
                            }
                            .buttonStyle(PlainButtonStyle())
                            .padding(.top, __designTimeInteger("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[2].value.[3].[0].[0].modifier[1].arg[1].value", fallback: 10))
                        } else {
                            Text(__designTimeString("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[2].value.[3].[1].[0].arg[0].value", fallback: "No booking URL available"))
                                .foregroundColor(.red)
                                .padding(.top, __designTimeInteger("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[2].value.[3].[1].[0].modifier[1].arg[1].value", fallback: 10))
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: __designTimeInteger("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 15)).foregroundColor(.white).shadow(radius: __designTimeInteger("#42700.[2].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[0].value.modifier[1].arg[0].value", fallback: 5)))
                    .padding()
                }
            }
        }
        .padding()
        .navigationTitle(__designTimeString("#42700.[2].[1].property.[0].[0].modifier[1].arg[0].value", fallback: "Sports"))
    
#sourceLocation()
    }
}

import struct MindBodyReminder_MindBodyReminder_MindBodyReminder.Sport
import struct MindBodyReminder_MindBodyReminder_MindBodyReminder.SportCenter
#Preview {
    SportCenter()
}



