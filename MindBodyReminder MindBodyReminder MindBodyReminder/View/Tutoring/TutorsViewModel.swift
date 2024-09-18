//
//  TutorsViewModel.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/20/24.
//

import Foundation

class TutorsViewModel: ObservableObject {
    @Published var tutors: [[Tutor]] = []
    
    // Fetch mock data
    func fetchTutors() {
        // Mock data
        let mathematicsTutors = [
            Tutor(name: "John Doe", 
                  major: "Mathematics",
        description: "Experienced math tutor with 5+ years of teaching experience.",
                  photo: "john",
                  starRating: 5,
                  availableDates: [Date()]),
            Tutor(name: "Jane Smith", 
                  major: "Mathematics",
        description: "Passionate about helping students excel in mathematics.",
                  photo: "jane",
                  starRating: 4,
                  availableDates: [Date().random_time(), Date().random_time()])
        ]
        
        let physicsTutors = [
            Tutor(name: "Alice Smith", 
                  major: "Physics",
        description: "Passionate about teaching physics concepts in a simple and understandable way.",
                  photo: "alice",
                  starRating: 4,
                  availableDates: [Date().random_time(),
                                   Date().random_time()]),
            Tutor(name: "Bob Johnson", 
                  major: "Physics",
                  description: "Physics enthusiast with a knack for problem-solving.",
                  photo: "bob2",
                  starRating: 5, availableDates: [Date().random_time(),
                                                  Date().random_time()])
        ]
        
        let chemistryTutors = [
            Tutor(name: "Emily Johnson", 
                  major: "Chemistry",
        description: "Chemistry enthusiast with a knack for simplifying complex concepts.",
                  photo: "emily1",
                  starRating: 4,
                  availableDates: [Date().random_time(),
                                   Date().random_time()])
        ]
        
        let englishTutors = [
            Tutor(name: "Michael Brown", 
                  major: "English",
                  description: "Helping students master language arts and literature.",
                  photo: "michael",
                  starRating: 3,
                  availableDates: [Date().random_time()])
        ]
        
        let computerScienceTutors = [
            Tutor(name: "Samantha Lee", 
                  major: "Computer Science",
        description: "Experienced programmer eager to share knowledge in coding and algorithms.",
                  photo: "samantha", 
                  starRating: 5,
                  availableDates: [Date().random_time(),
                                   Date().random_time()])
        ]
        
        let historyTutors = [
            Tutor(name: "David Wang", 
                  major: "History",
        description: "Making history come alive with engaging lessons and discussions.",
                  photo: "david",
                  starRating: 4,
                  availableDates: [Date().random_time()])
        ]
        
        tutors = [
            mathematicsTutors,
            physicsTutors,
            chemistryTutors,
            englishTutors,
            computerScienceTutors,
            historyTutors
        ]
    }

}






