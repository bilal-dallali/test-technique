//
//  NavigationList.swift
//  Test-technique
//
//  Created by Bilal Dallali on 14/04/2023.
//

import SwiftUI

struct ApplicationListView: View {
    
    @State private var searchBar = ""
    @State private var isChromeSelected = true
    @State private var isCameraSelected = false
    var body: some View {
        NavigationStack {
            ScrollView {
                HStack {
                    Image("burger-menu")
                    Spacer()
                    Text("Child first name")
                        .foregroundColor(.white)
                        .font(.custom("Poppins-Regular", size: 18))
                    Spacer()
                    Image("profile-icon")
                }
                .padding(.top, 15)
                .padding(.horizontal, 22)
                
                HStack {
                    Image("magnifying-glass")
                    TextField("", text: $searchBar)
                        .foregroundColor(.white)
                        .font(.custom("Abel-regular", size: 18))
                }
                .padding(.vertical, 9)
                .padding(.horizontal, 13)
                .background(Color("Search"))
                .cornerRadius(8)
                .padding(.horizontal, 22)
                Divider()
                    .overlay {
                        Rectangle()
                            .foregroundColor(Color(red: 1, green: 1, blue: 1))
                            .opacity(0.59)
                    }
                    .overlay {
                        Rectangle()
                            .foregroundColor(Color(red: 63/255, green: 99/255, blue: 169/255))
                            .opacity(0.59)
                    }
                    .padding(.top, 15)
                VStack(spacing: 10) {
                    HStack(spacing: 0) {
                        Image("google-logo-2")
                            .padding(.trailing, 15)
                        Text("Google Chrome")
                            .foregroundColor(.white)
                            .font(.custom("Abel-Regular", size: 18))
                        Spacer()
                        Text(isChromeSelected ? "On" : "Off")
                            .font(.custom("Abel-Regular", size: 14))
                            .foregroundColor(.white)
                            .padding(.trailing, 5)
                        Button {
                            withAnimation {
                                isChromeSelected.toggle()
                            }
                        } label: {
                            if isChromeSelected {
                                HStack {
                                    Spacer()
                                    VStack {
                                        Image("on")
                                    }
                                    .frame(width: 27, height: 27)
                                    .background(.white)
                                    .cornerRadius(4)
                                    .padding(.trailing, 4)
                                }
                                .frame(width: 55, height: 35)
                                .background(Color("Green"))
                                .cornerRadius(8)
                            } else {
                                HStack {
                                    VStack {
                                        Image("off")
                                    }
                                    .frame(width: 27, height: 27)
                                    .background(.white)
                                    .cornerRadius(4)
                                    .padding(.leading, 4)
                                    Spacer()
                                }
                                .frame(width: 55, height: 35)
                                .background(Color("Search"))
                                .cornerRadius(8)
                            }
                        }

                    }
                    Divider()
                        .overlay {
                            Rectangle()
                                .frame(height: 2)
                                .foregroundColor(.white)
                                .opacity(0.03)
                        }
                    HStack(spacing: 0) {
                        Image("camera-icon")
                            .padding(.trailing, 15)
                        Text("Camera")
                            .foregroundColor(.white)
                            .font(.custom("Abel-Regular", size: 18))
                        Spacer()
                        Text(isCameraSelected ? "On" : "Off")
                            .font(.custom("Abel-Regular", size: 14))
                            .foregroundColor(.white)
                            .padding(.trailing, 5)
                        Button {
                            withAnimation {
                                isCameraSelected.toggle()
                            }
                        } label: {
                            if isCameraSelected {
                                HStack {
                                    Spacer()
                                    VStack {
                                        Image("on")
                                    }
                                    .frame(width: 27, height: 27)
                                    .background(.white)
                                    .cornerRadius(4)
                                    .padding(.trailing, 4)
                                }
                                .frame(width: 55, height: 35)
                                .background(Color("Green"))
                                .cornerRadius(8)
                            } else {
                                HStack {
                                    VStack {
                                        Image("off")
                                    }
                                    .frame(width: 27, height: 27)
                                    .background(.white)
                                    .cornerRadius(4)
                                    .padding(.leading, 4)
                                    Spacer()
                                }
                                .frame(width: 55, height: 35)
                                .background(Color("Search"))
                                .cornerRadius(8)
                            }
                        }

                    }
                    Divider()
                        .overlay {
                            Rectangle()
                                .frame(height: 2)
                                .foregroundColor(.white)
                                .opacity(0.03)
                        }
                }
                .padding(.horizontal, 22)
                .padding(.top, 10)
            }
            .frame(maxWidth: .infinity)
            .background(Color("BackgroundColor"))
        }
        .navigationBarBackButtonHidden()
    }
}

struct NavigationList_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationListView()
    }
}
