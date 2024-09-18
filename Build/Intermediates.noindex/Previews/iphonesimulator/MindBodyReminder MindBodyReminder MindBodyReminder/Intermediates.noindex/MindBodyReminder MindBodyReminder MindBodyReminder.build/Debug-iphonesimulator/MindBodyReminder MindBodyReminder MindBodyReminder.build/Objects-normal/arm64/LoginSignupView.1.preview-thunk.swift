@_private(sourceFile: "LoginSignupView.swift") import MindBodyReminder_MindBodyReminder_MindBodyReminder
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI
import SwiftUI

extension LoginSignupView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josealarconchacon/Dropbox/MindBodyReminder MindBodyReminder MindBodyReminder/MindBodyReminder MindBodyReminder MindBodyReminder/View/LoginRegistration/LoginSignupView.swift", line: 17)
        VStack {
            if isLogin {
                LoginView(isLogin: $isLogin)
                Spacer()
                Button(action: {
                    self.isLogin = __designTimeBoolean("#18907.[2].[1].property.[0].[0].arg[0].value.[0].[0].[2].arg[0].value.[0].[0]", fallback: false)
                }) {
                    Text(__designTimeString("#18907.[2].[1].property.[0].[0].arg[0].value.[0].[0].[2].arg[1].value.[0].arg[0].value", fallback: "Don't have an account? Sign Up"))
                        .foregroundColor(.blue)
                        .padding(.bottom, __designTimeInteger("#18907.[2].[1].property.[0].[0].arg[0].value.[0].[0].[2].arg[1].value.[0].modifier[1].arg[1].value", fallback: 20))
                }
            } else {
                SignupView(isLogin: $isLogin)
                Spacer()
                Button(action: {
                    self.isLogin = __designTimeBoolean("#18907.[2].[1].property.[0].[0].arg[0].value.[0].[1].[2].arg[0].value.[0].[0]", fallback: true)
                }) {
                    Text(__designTimeString("#18907.[2].[1].property.[0].[0].arg[0].value.[0].[1].[2].arg[1].value.[0].arg[0].value", fallback: "Already have an account? Login"))
                        .foregroundColor(.blue)
                        .padding(.bottom, __designTimeInteger("#18907.[2].[1].property.[0].[0].arg[0].value.[0].[1].[2].arg[1].value.[0].modifier[1].arg[1].value", fallback: 20))
                }
            }
        }
    
#sourceLocation()
    }
}

import struct MindBodyReminder_MindBodyReminder_MindBodyReminder.LoginSignupView
#Preview {
    LoginSignupView()
}



