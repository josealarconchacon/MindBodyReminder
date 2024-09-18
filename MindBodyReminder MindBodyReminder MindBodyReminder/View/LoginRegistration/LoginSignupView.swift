//
//  LoginSignupView.swift
//  MindBodyReminder MindBodyReminder MindBodyReminder
//
//  Created by Jose Alarcon Chacon on 5/14/24.
//

import SwiftUI


import SwiftUI

struct LoginSignupView: View {
    @State private var isLogin: Bool = true
    
    var body: some View {
        VStack {
            if isLogin {
                LoginView(isLogin: $isLogin)
                Spacer()
                Button(action: {
                    self.isLogin = false
                }) {
                    Text("Don't have an account? Sign Up")
                        .foregroundColor(.blue)
                        .padding(.bottom, 20)
                }
            } else {
                SignupView(isLogin: $isLogin)
                Spacer()
                Button(action: {
                    self.isLogin = true
                }) {
                    Text("Already have an account? Login")
                        .foregroundColor(.blue)
                        .padding(.bottom, 20)
                }
            }
        }
    }
}


#Preview {
    LoginSignupView()
}
