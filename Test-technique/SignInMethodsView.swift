//
//  ContentView.swift
//  Test-technique
//
//  Created by Bilal Dallali on 13/04/2023.
//

import SwiftUI

struct SignInMethodsView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
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
                        NavigationLink {
                            SignInFirstStepView()
                        } label: {
                            HStack {
                                HStack(spacing: 11) {
                                    Text("Sign in with Email")
                                        .foregroundColor(Color("FontColor"))
                                        .font(.custom("Abel-Regular", size: 18))
                                    Image("mail-icon")
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .frame(width: 6, height: 10)
                                    .foregroundColor(Color("BackgroundColor"))
                            }
                            .padding(.horizontal, 20)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(.white)
                            .cornerRadius(10)
                        }
                        
                        Button {
                            //
                        } label: {
                            HStack {
                                HStack(spacing: 11) {
                                    Text("Sign in with Gmail")
                                        .foregroundColor(Color("FontColor"))
                                        .font(.custom("Abel-Regular", size: 18))
                                    Image("google-logo")
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .frame(width: 6, height: 10)
                                    .foregroundColor(Color("BackgroundColor"))
                            }
                            .padding(.horizontal, 20)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(.white)
                            .cornerRadius(10)
                        }
                        
                        Button {
                            //
                        } label: {
                            HStack {
                                HStack(spacing: 11) {
                                    Text("Sign in with Facebook")
                                        .foregroundColor(Color("FontColor"))
                                        .font(.custom("Abel-Regular", size: 18))
                                    Image("facebook-logo")
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .frame(width: 6, height: 10)
                                    .foregroundColor(Color("BackgroundColor"))
                            }
                            .padding(.horizontal, 20)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(.white)
                            .cornerRadius(10)
                        }
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
                    .padding(.leading, 14)
                    .padding(.top, 41)
                }
                Spacer()
            }
            .padding(.horizontal, 40)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInMethodsView()
    }
}
