//
//  SignupView.swift
//  CombineDemo
//
//  Created by Dino Trnka on 10. 12. 2022..
//

import SwiftUI

struct SignUpView: View {
    
    @ObservedObject private var viewModel: SignUpViewModel = SignUpViewModel()
    
    var body: some View {
        VStack {
            Form {
                Section {
                    TextField("Name", text: $viewModel.userName)
                    TextField("Email", text: $viewModel.userEmail)
                    TextField("Password", text: $viewModel.userPassword)
                    TextField("Repeat Password", text: $viewModel.userRepeatedPassword)
                }
                .disableAutocorrection(true)
                .textInputAutocapitalization(.never)
            }
            
            Button("Sign Up") {
                print("Button tapped")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(viewModel.formIsValid ? Color.green : Color.black.opacity(0.5))
            .foregroundColor(.white)
            .disabled(!viewModel.formIsValid)
            
            Spacer()
        }
    }
}
