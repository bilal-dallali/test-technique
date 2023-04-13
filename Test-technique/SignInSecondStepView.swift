//
//  SignInSecondStepView.swift
//  Test-technique
//
//  Created by Bilal Dallali on 13/04/2023.
//

import SwiftUI

struct SignInSecondStepView: View {
    
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                ScrollView {
                    Image("logo")
                        .padding(.top, 57)
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Welcome to 4In Shield!\nSign in to continue")
                            .foregroundColor(.white)
                            .font(.custom("Abel-Regular", size: 22))
                            .padding(.top, 63)
                            .padding(.bottom, 89)
                            .padding(.leading, 14)
                        VStack(spacing: 26) {
                            TextField("", text: $username)
                                .placeholder(when: username.isEmpty) {
                                    Text("Username")
                                        .foregroundColor(Color("PlaceholderColor"))
                                        .font(.custom("Abel-Regular", size: 14))
                                        
                                }
                                .padding(.leading, 19)
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                                .font(.custom("Abel-Regular", size: 14))
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(.white)
                                .cornerRadius(8)
                                .shadow(color: Color.black.opacity(0.06), radius: 2, x: 0, y: 1)
                            TextField("", text: $email)
                                .placeholder(when: email.isEmpty) {
                                    Text("Email")
                                        .foregroundColor(Color("PlaceholderColor"))
                                        .font(.custom("Abel-Regular", size: 14))
                                        
                                }
                                .padding(.leading, 19)
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                                .font(.custom("Abel-Regular", size: 14))
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(.white)
                                .cornerRadius(8)
                                .shadow(color: Color.black.opacity(0.06), radius: 2, x: 0, y: 1)
                            SecureField("", text: $password)
                                .placeholder(when: password.isEmpty) {
                                    Text("Password")
                                        .foregroundColor(Color("PlaceholderColor"))
                                        .font(.custom("Abel-Regular", size: 14))
                                }
                                .padding(.leading, 19)
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                                .font(.custom("Abel-Regular", size: 14))
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(.white)
                                .cornerRadius(8)
                                .shadow(color: Color.black.opacity(0.06), radius: 2, x: 0, y: 1)
                            SecureField("", text: $confirmPassword)
                                .placeholder(when: confirmPassword.isEmpty) {
                                    Text("Confirm your password")
                                        .foregroundColor(Color("PlaceholderColor"))
                                        .font(.custom("Abel-Regular", size: 14))
                                }
                                .padding(.leading, 19)
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                                .font(.custom("Abel-Regular", size: 14))
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(.white)
                                .cornerRadius(8)
                                .shadow(color: Color.black.opacity(0.06), radius: 2, x: 0, y: 1)
                        }
                        
                        Button {
                            //
                        } label: {
                            HStack(spacing: 0) {
                                Text("I herby accept ")
                                    .foregroundColor(.white)
                                    .font(.custom("Abel-Regular", size: 14))
                                Text("terms and conditions")
                                    .foregroundColor(.white)
                                    .font(.custom("Abel-Regular", size: 14))
                                    .underline(true, color: .white)
                            }
                            
                        }
                        .padding(.top, 28)
                        .padding(.leading, 33)
                        
                        HStack {
                            Spacer()
                            if username != "" && email != "" && password != "" && password == confirmPassword {
                                NavigationLink {
                                    SpaceChooseView()
                                } label: {
                                    HStack(spacing: 9) {
                                        Text("Sign in")
                                            .foregroundColor(Color("FontColor"))
                                            .font(.custom("Abel-Regular", size: 18))
                                        Image(systemName: "chevron.right")
                                            .resizable()
                                            .frame(width: 6, height: 10)
                                            .foregroundColor(Color("FontColor"))
                                    }
                                    .padding(.vertical, 15)
                                    .padding(.leading, 13)
                                    .padding(.trailing, 20)
                                    .background(.white)
                                    .cornerRadius(8)
                                }
                            } else {
                                Button {
                                    //
                                } label: {
                                    HStack(spacing: 9) {
                                        Text("Sign in")
                                            .foregroundColor(Color("FontColor"))
                                            .font(.custom("Abel-Regular", size: 18))
                                        Image(systemName: "chevron.right")
                                            .resizable()
                                            .frame(width: 6, height: 10)
                                            .foregroundColor(Color("FontColor"))
                                    }
                                    .padding(.vertical, 15)
                                    .padding(.leading, 13)
                                    .padding(.trailing, 20)
                                    .background(.white)
                                    .cornerRadius(8)
                                }
                            }
                            
                            Spacer()
                        }
                        .padding(.top, 24)
                    }
                }
                
            }
            .padding(.horizontal, 40)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden()
    }
}

struct SignInSecondStepView_Previews: PreviewProvider {
    static var previews: some View {
        SignInSecondStepView()
    }
}
