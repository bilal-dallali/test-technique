//
//  SignInFirstStepView.swift
//  Test-technique
//
//  Created by Bilal Dallali on 13/04/2023.
//

import SwiftUI

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

struct SignInFirstStepView: View {
    
    @State private var username = ""
    @State private var password = ""
    
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
                        }
                        
                        HStack {
                            Spacer()
                            if username != "" && password != "" {
                                NavigationLink {
                                    SignInSecondStepView()
                                } label: {
                                    HStack(spacing: 9) {
                                        Text("Sign in")
                                            .foregroundColor(Color("FontColor"))
                                            .font(.custom("Poppins-Bold", size: 18))
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
                            .padding(.top, 63)
                            } else {
                                Button {
                                    //SignInSecondStepView()
                                } label: {
                                    HStack(spacing: 9) {
                                        Text("Sign in")
                                            .foregroundColor(Color("FontColor"))
                                            .font(.custom("Poppins-Bold", size: 18))
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
                            .padding(.top, 63)
                            }
                            Spacer()
                        }
                        
                        Button {
                            //
                        } label: {
                            VStack(spacing: 2) {
                                Text("No account? Sign up")
                                    .foregroundColor(.white)
                                    .font(.custom("Abel-Regular", size: 18))
                                Divider()
                                    .frame(width: 139, height: 2)
                                    .overlay {
                                        Rectangle()
                                            .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.15))
                                    }
                            }
                        }
                        .padding(.top, 27)
                        .padding(.leading, 14)
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

struct SignInFirstStepView_Previews: PreviewProvider {
    static var previews: some View {
        SignInFirstStepView()
    }
}
