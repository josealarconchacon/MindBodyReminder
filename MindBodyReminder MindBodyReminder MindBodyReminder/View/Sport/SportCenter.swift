//
//  SportCenter.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/30/24.
//

import SwiftUI

struct Sport: Identifiable {
    var id = UUID()
    var imageName: String
    var name: String
    var details: String
    var bookingURL: URL? // Property to store the booking URL
}

struct SportCenter: View {
    let items: [Sport] = [
        Sport(imageName: "pool",
              name: "Aquatics Center",
              details: "The Aquatics Center is located in the E-Building, Room E-155, and offers a 25-yard, six-lane indoor swimming pool.",
              bookingURL: URL(string: "https://www.laguardia.edu/students/athletics-and-recreation/aquatics-center/")),
        Sport(imageName: "exercise12322122",
              name: "Sports and Fitness",
              details: "The Sports Gymnasium and Fitness Center are located on the basement level of the M-Building. Please note that these facilities are currently closed.",
              bookingURL: URL(string: "https://www.laguardia.edu/students/athletics-and-recreation/sports-and-fitness/")),
        Sport(imageName: "runrun",
              name: "LaGuardia Community Run",
              details: "LaGuardia Community Run is a fitness celebration that includes a 5K run/walk and an activities plaza a featuring local businesses, sponsors, and the College community.",
              bookingURL: URL(string: "https://www.laguardia.edu/students/athletics-and-recreation/laguardia-community-run/"))
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 5) {
                ForEach(items) { item in
                    VStack(alignment: .leading, spacing: 1) {
                        Image(item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 120)
                            .padding()
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(15)
                        
                        Text(item.name)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text(item.details)
                            .font(.body)
                            .foregroundColor(.gray)
                        
                        if let bookingURL = item.bookingURL { // Check if booking URL is available
                            Link(destination: bookingURL) {
                                Text("Learn More")
                                    .fontWeight(.bold)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 20)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .padding(.top, 10)
                        } else {
                            Text("No booking URL available")
                                .foregroundColor(.red)
                                .padding(.top, 10)
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).foregroundColor(.white).shadow(radius: 5))
                    .padding()
                }
            }
        }
        .padding()
        .navigationTitle("Sports")
    }
}

#Preview {
    SportCenter()
}
