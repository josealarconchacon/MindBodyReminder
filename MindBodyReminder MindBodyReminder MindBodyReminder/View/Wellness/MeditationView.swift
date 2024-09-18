//
//  MeditationView.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/14/24.
//

import SwiftUI

struct MeditationView: View {
    @State private var show_breathing_exercise = false
    
    var body: some View {
        ZStack {
            Image("istock")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .offset(y: -250)
                .edgesIgnoringSafeArea(.all)
            Spacer()
            VStack {
                Text("Breathing")
                    .font(.largeTitle)
                    .padding()
                
                Button(action: {
                    show_breathing_exercise = true
                }) {
                    Text("Start Breathing Exercise")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .sheet(isPresented: $show_breathing_exercise) {
                    BreathingExerciseView()
                }
            }
        }
    }
}

