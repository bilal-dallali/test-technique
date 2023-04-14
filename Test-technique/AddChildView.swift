//
//  AddChild.swift
//  Test-technique
//
//  Created by Bilal Dallali on 13/04/2023.
//

import SwiftUI

struct AddChildView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var gender = ""
    @State private var birthDate = ""
    @State private var selectGender = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack(spacing: 71) {
                        Image("add-child-icon")
                        VStack(spacing: 64) {
                            Text("Please enter the required information to complete your child’s profile")
                                .foregroundColor(.white)
                                .font(.custom("Poppins-Regular", size: 22))
                                .multilineTextAlignment(.center)
                            VStack(spacing: 33) {
                                VStack(spacing: 23) {
                                    TextField("", text: $firstName)
                                        .placeholder(when: firstName.isEmpty) {
                                            Text("First name")
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
                                    TextField("", text: $lastName)
                                        .placeholder(when: lastName.isEmpty) {
                                            Text("Last name")
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
                                    TextField("", text: $gender)
                                        .placeholder(when: gender.isEmpty) {
                                            Text("Gender")
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
                                        .disabled(true)
                                        .onTapGesture {
                                            selectGender = true
                                        }
                                    TextField("", text: $birthDate)
                                        .placeholder(when: birthDate.isEmpty) {
                                            Text("Birth date")
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
                                        .keyboardType(.numberPad)
                                }
                                
                                HStack(spacing: 45) {
                                    NavigationLink {
                                        CongratsView()
                                    } label: {
                                        Text("Skip")
                                            .foregroundColor(Color("FontColor"))
                                            .font(.custom("Abel-Regular", size: 18))
                                    }
                                    .frame(width: 105, height: 50)
                                    .background(.white)
                                    .cornerRadius(8)
                                    
                                    if firstName != "" && lastName != "" && gender != "" && birthDate != "" {
                                        NavigationLink {
                                            CongratsView()
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
                                            //
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
                            }
                        }
                    }
                    .padding(.top, 44)
                }
                .frame(maxWidth: .infinity)
                .background(Color("BackgroundColor"))
                if selectGender {
                    VStack {
                        Button {
                            gender = "Male"
                            selectGender = false
                        } label: {
                            Text("Male")
                                .foregroundColor(Color("FontColor"))
                                .font(.custom("Abel-Regular", size: 18))
                                .padding(.vertical, 15)
                        }
                        Divider()
                        Button {
                            gender = "Female"
                            selectGender = false
                        } label: {
                            Text("Female")
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

struct AddChild_Previews: PreviewProvider {
    static var previews: some View {
        AddChildView()
    }
}
