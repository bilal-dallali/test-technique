//
//  AddProfile.swift
//  Test-technique
//
//  Created by Bilal Dallali on 13/04/2023.
//

import SwiftUI

struct AddProfileView: View {
    
    @State private var socialNetwork = ""
    @State private var socialUsername = ""
    @State private var socialUrl = ""
    @State private var selectSocialNetwork = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack(spacing: 0) {
                        Image("add-profile-icon")
                        Text("Please enter your child’s social media account information ")
                            .foregroundColor(.white)
                            .font(.custom("Abel-Regular", size: 22))
                            .padding(.top, 64)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 45)
                        Text("This information will help us to protect your child from online abusive content and cyberharassment")
                            .foregroundColor(.white)
                            .font(.custom("Abel-Regular", size: 16))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 22)
                            .padding(.top, 4)
                        TextField("", text: $socialNetwork)
                            .placeholder(when: socialNetwork.isEmpty) {
                                Text("Social network platform (Drop down)")
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
                            .padding(.horizontal, 40)
                            .padding(.top, 46)
                            .disabled(true)
                            .onTapGesture {
                                selectSocialNetwork = true
                            }
                        TextField("", text: $socialUsername)
                            .placeholder(when: socialUsername.isEmpty) {
                                Text("Social network user name")
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
                            .padding(.horizontal, 40)
                            .padding(.top, 39)
                        TextField("", text: $socialUrl)
                            .placeholder(when: socialUrl.isEmpty) {
                                Text("Social network page URL")
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
                            .padding(.horizontal, 40)
                            .padding(.top, 23)
                        HStack(spacing: 45) {
                            NavigationLink {
                                ConfirmProfileView()
                            } label: {
                                Text("Skip")
                                    .foregroundColor(Color("FontColor"))
                                    .font(.custom("Abel-Regular", size: 18))
                            }
                            .frame(width: 105, height: 50)
                            .background(.white)
                            .cornerRadius(8)
                            
                            if socialNetwork != "" && socialUsername != "" && socialUrl != "" {
                                NavigationLink {
                                    ConfirmProfileView()
                                } label: {
                                    HStack {
                                        Text("Next")
                                            .foregroundColor(Color("FontColor"))
                                            .font(.custom("Abel-Regular", size: 18))
                                        Image(systemName: "chevron.right")
                                            .resizable()
                                            .frame(width: 6, height: 10)
                                            .foregroundColor(Color("BackgroundColor"))
                                    }
                                }
                                .frame(width: 105, height: 50)
                                .background(.white)
                                .cornerRadius(8)
                            } else {
                                Button {
                                    //ConfirmProfileView()
                                } label: {
                                    HStack {
                                        Text("Next")
                                            .foregroundColor(Color("FontColor"))
                                            .font(.custom("Abel-Regular", size: 18))
                                        Image(systemName: "chevron.right")
                                            .resizable()
                                            .frame(width: 6, height: 10)
                                            .foregroundColor(Color("BackgroundColor"))
                                    }
                                }
                                .frame(width: 105, height: 50)
                                .background(.white)
                                .cornerRadius(8)
                            }
                        }
                        .padding(.top, 33)
                    }
                    .padding(.top, 43)
                   
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("BackgroundColor"))
                .ignoresSafeArea()
                if selectSocialNetwork {
                    VStack {
                        Button {
                            socialNetwork = "Google"
                            selectSocialNetwork = false
                        } label: {
                            Text("google")
                                .foregroundColor(Color("FontColor"))
                                .font(.custom("Abel-Regular", size: 18))
                                .padding(.vertical, 15)
                        }
                        Divider()
                        Button {
                            socialNetwork = "Facebook"
                            selectSocialNetwork = false
                        } label: {
                            Text("Facebook")
                                .foregroundColor(Color("FontColor"))
                                .font(.custom("Abel-Regular", size: 18))
                                .padding(.vertical, 15)
                        }
                    }
                    .frame(width: 105)
                    .background(.white)
                    .cornerRadius(8)
                }
                
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct AddProfile_Previews: PreviewProvider {
    static var previews: some View {
        AddProfileView()
    }
}
