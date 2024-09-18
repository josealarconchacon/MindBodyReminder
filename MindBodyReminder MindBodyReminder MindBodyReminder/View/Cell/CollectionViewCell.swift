//
//  CollectionViewCell.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/14/24.
//

import SwiftUI

struct CollectionViewCell: View {
    let imageName: String
    let label: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140, height: 125)
                .cornerRadius(8)
            
            Text(label)
                .font(.caption)
                .foregroundColor(.black)
                .padding(.top, 8)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0, y: 0.2)
    }
}

