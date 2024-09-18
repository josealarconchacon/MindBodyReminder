//
//  BreathingExerciseView.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/22/24.

import SwiftUI
import Lottie

struct BreathingExerciseView: View {
    @State private var selected_duration_index = 0
    @State private var is_breathing_start = false
    @State private var time_remaining = 0
    @State private var timer_stopped = false
    @State private var set_animation_speed: CGFloat = 1.0
    
    @State private var default_duration = 25 // Default duration in seconds
    
    let lottiefiles_animation_name = "animation1.json"
    
    var body: some View {
        VStack {
            Text("\(time_remaining) seconds remaining")
                .font(.title2)
                .padding()
            
            LottieView(animation: .named(lottiefiles_animation_name))
                .playbackMode(self.is_breathing_start ? .playing(.toProgress(1, loopMode: .loop)) : .paused)
                .frame(width: 200, height: 200)
                .padding()
                .onAppear {
                    if !self.is_breathing_start {
                        self.stop_animation()
                    } else {
                        self.start_animation()
                    }
                }
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
                    self.stop_animation()
                }
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
                    if self.is_breathing_start && !self.timer_stopped {
                        self.start_animation()
                    }
                }
            
            Spacer()
            
            Picker("Select Breathing Duration", selection: $default_duration) {
                Text("15 seconds").tag(15)
                Text("25 seconds").tag(25)
                Text("35 seconds").tag(35)
                Text("45 seconds").tag(45)
            }
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: 350, height: 100)
            .padding()
            
            Spacer()
            
            Button(action: {
                self.is_breathing_start.toggle()
                if self.is_breathing_start {
                    self.start_breathing_timer()
                } else {
                    self.stop_breathing_timer()
                }
            }) {
                Text(self.is_breathing_start ? "Stop Breathing" : "Start Breathing")
                    .padding()
                    .background(self.is_breathing_start ? Color.red : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .onReceive(Timer.publish(every: 1, on: .main, in: .common).autoconnect()) { _ in
            if self.is_breathing_start && !self.timer_stopped {
                if self.time_remaining > 0 {
                    self.time_remaining -= 1
                } else {
                    self.is_breathing_start = false
                    self.timer_stopped = true // Stop the timer
                    self.stop_animation()
                }
            }
        }
    }
    
    func start_breathing_timer() {
        self.time_remaining = default_duration
        self.timer_stopped = false
        self.start_animation()
    }
    
    func stop_breathing_timer() {
        self.timer_stopped = true
        self.stop_animation()
    }
    
    func stop_animation() {
        self.set_animation_speed = 0.0
    }
    
    func start_animation() {
        self.set_animation_speed = 1.0
    }
}
