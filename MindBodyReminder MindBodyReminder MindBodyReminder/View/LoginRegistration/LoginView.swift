//
//  LoginView.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/14/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @Binding var isLogin: Bool
    
    @State private var showError: Bool = false
    
    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding(.bottom, 30)
            
            VStack(alignment: .leading, spacing: 20) {
                TextField("Username", text: $username)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
            }
            .padding(.horizontal)
            .padding(.bottom, 30)
            
            Button(action: {
                // Perform login action
                if self.validateForm() {
                    // For demonstration, assume login is successful
                    self.isLogin = true
                } else {
                    self.showError = true
                }
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .padding(.vertical, 12)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(8)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
            }
            .padding(.horizontal)
            .alert(isPresented: $showError) {
                Alert(title: Text("Error"), message: Text("Please enter valid username and password"), dismissButton: .default(Text("OK")))
            }
            
            Spacer()
        }
        .padding()
    }
    
    private func validateForm() -> Bool {
        return !username.isEmpty && !password.isEmpty
    }
}
