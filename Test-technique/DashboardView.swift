//
//  DashboardView.swift
//  Test-technique
//
//  Created by Bilal Dallali on 13/04/2023.
//

import SwiftUI

struct DashboardView: View {
    
    @State private var isDaySelected = true
    @State private var isWeekSelected = false
    @State private var isMonthSelected = false
    
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
                
                VStack(alignment: .leading, spacing: 0) {
                    Image("avatar-child")
                    HStack {
                        Text("First name Last name")
                            .foregroundColor(.white)
                            .font(.custom("Poppins-Regular", size: 18))
                            .padding(.top, 13)
                        Spacer()
                    }
                    Text("Age")
                        .foregroundColor(Color("PlaceholderColor"))
                        .font(.custom("Poppins-Semibold", size: 12))
                }
                .padding(.top, 45)
                .padding(.horizontal, 24)
                
                HStack(spacing: 0) {
                    Button {
                        isDaySelected = false
                        isWeekSelected = false
                        isMonthSelected = true
                    } label: {
                        Text("Month")
                            .foregroundColor(Color(isMonthSelected ? "BackgroundColor" : "Gray"))
                            .font(.custom("Poppins-Semibold", size: 12))
                            .padding(.vertical, 8)
                            .padding(.horizontal, 14)
                            .background(Color(isMonthSelected ? "White" : "BackgroundColor"))
                            .cornerRadius(6)
                    }
                    Button {
                        isDaySelected = false
                        isWeekSelected = true
                        isMonthSelected = false
                    } label: {
                        Text("Week")
                            .foregroundColor(Color(isWeekSelected ? "BackgroundColor" : "Gray"))
                            .font(.custom("Poppins-Semibold", size: 12))
                            .padding(.vertical, 8)
                            .padding(.horizontal, 14)
                            .background(Color(isWeekSelected ? "White" : "BackgroundColor"))
                            .cornerRadius(6)
                    }
                    Button {
                        isDaySelected = true
                        isWeekSelected = false
                        isMonthSelected = false
                    } label: {
                        Text("Day")
                            .foregroundColor(Color(isDaySelected ? "BackgroundColor" : "Gray"))
                            .font(.custom("Poppins-Semibold", size: 12))
                            .padding(.vertical, 8)
                            .padding(.horizontal, 14)
                            .background(Color(isDaySelected ? "White" : "BackgroundColor"))
                            .cornerRadius(6)
                    }
                }
                .padding(.top, 23)
                
                HStack {
                    VStack(spacing: 9) {
                        Text("Danger level")
                            .foregroundColor(Color("Brown"))
                            .font(.custom("Poppins-regular", size: 10))
                        Text("High")
                            .foregroundColor(Color("Red"))
                            .font(.custom("Poppins-regular", size: 20))
                    }
                    .frame(height: 89)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .cornerRadius(12)
                    .padding(.trailing, 22)
                    VStack(spacing: 3) {
                        Text("Last night Sleep\nduration")
                            .foregroundColor(Color("Brown"))
                            .font(.custom("Poppins-regular", size: 10))
                            .multilineTextAlignment(.center)
                        Text("8h")
                            .foregroundColor(Color("Brown"))
                            .font(.custom("Poppins-regular", size: 20))
                    }
                    .frame(height: 89)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .cornerRadius(12)
                    .padding(.leading, 22)
                }
                .padding(.top, 30)
                HStack {
                    VStack(spacing: 16) {
                        Text("Device usage")
                            .foregroundColor(Color("Brown"))
                            .font(.custom("Poppins-regular", size: 10))
                        Text("4h")
                            .foregroundColor(Color("Brown"))
                            .font(.custom("Poppins-regular", size: 20))
                    }
                    .frame(height: 89)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .cornerRadius(12)
                    .padding(.trailing, 22)
                    VStack(spacing: 0) {
                        Text("Phone call duration")
                            .foregroundColor(Color("Brown"))
                            .font(.custom("Poppins-regular", size: 10))
                            .multilineTextAlignment(.center)
                        Text("4h")
                            .foregroundColor(Color("Brown"))
                            .font(.custom("Poppins-regular", size: 20))
                    }
                    .frame(height: 89)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .cornerRadius(12)
                    .padding(.leading, 22)
                }
                .padding(.top, 10)
                
                VStack(alignment: .leading, spacing: 7) {
                    Text("Last Alerts")
                        .foregroundColor(Color("Brown"))
                        .font(.custom("Poppins-Bold", size: 14))
                    VStack(spacing: 1) {
                        HStack {
                            VStack(spacing: 2) {
                                HStack {
                                    Text("Toxic comment!")
                                        .foregroundColor(Color("Red"))
                                        .font(.custom("Abel-Regular", size: 18))
                                    Spacer()
                                    Text("12:34 PM")
                                        .foregroundColor(Color("Gray"))
                                        .font(.custom("Abel-Regular", size: 10))
                                }
                                HStack {
                                    Text("Mama always said life was like a box of chocolates. You never know what…")
                                        .foregroundColor(Color("Brown"))
                                        .font(.custom("Abel-Regular", size: 14))
                                    Spacer()
                                }
                                
                                
                            }
                            .padding(.leading, 7)
                            
                            Spacer()
                            Rectangle()
                                .foregroundColor(Color("Violet"))
                                .frame(width: 2)
                                .cornerRadius(.infinity)
                                .padding(.leading, 28)
                            
                        }
                        
                        HStack {
                            VStack(spacing: 2) {
                                HStack {
                                    Text("Sleep depreviation!")
                                        .foregroundColor(Color("Red"))
                                        .font(.custom("Abel-Regular", size: 18))
                                    Spacer()
                                    Text("12:34 PM")
                                        .foregroundColor(Color("Gray"))
                                        .font(.custom("Abel-Regular", size: 10))
                                }
                                HStack {
                                    Text("Mama always said life was like a box of chocolates. You never know what…")
                                        .foregroundColor(Color("Brown"))
                                        .font(.custom("Abel-Regular", size: 14))
                                    Spacer()
                                }
                                
                                
                            }
                            .padding(.leading, 7)
                            
                            Spacer()
                            Rectangle()
                                .foregroundColor(Color("Violet"))
                                .frame(width: 2)
                                .cornerRadius(.infinity)
                                .padding(.leading, 28)
                            
                        }
                    }
                }
                .padding(14)
                .frame(maxWidth: .infinity)
                .background(.white)
                .cornerRadius(12)
                .padding(.top, 7)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Mental State")
                        .foregroundColor(Color("Brown"))
                        .font(.custom("Poppins-Bold", size: 14))
                    Image("mental-state-chart")
                }
                .padding(14)
                .frame(maxWidth: .infinity)
                .background(.white)
                .cornerRadius(12)
                .padding(.top, 7)
                VStack(alignment: .leading, spacing: 14) {
                    Text("Last social media activites")
                        .foregroundColor(Color("Brown"))
                        .font(.custom("Poppins-Bold", size: 14))
                        .padding(.horizontal, 14)
                    VStack(spacing: 10) {
                        HStack {
                            VStack {
                                Image("profile-picture-rebecca")
                                Spacer()
                            }
                            Spacer()
                            VStack(spacing: 0) {
                                HStack {
                                    Text("Rebecca Morgan")
                                        .foregroundColor(Color("Brown"))
                                        .font(.custom("Abel-regular", size: 18))
                                    Spacer()
                                    Text("12:34 PM")
                                        .foregroundColor(Color("Brown"))
                                        .font(.custom("Abel-Regular", size: 10))
                                }
                                HStack {
                                    Text("Mama always said life was like a box of chocolates. You never know what…")
                                        .foregroundColor(Color("Brown"))
                                        .font(.custom("Abel-regular", size: 14))
                                    Spacer()
                                }
                            }
                            Spacer()
                            Rectangle()
                                .frame(width: 2)
                                .foregroundColor(Color("Violet"))
                                .cornerRadius(.infinity)
                                .padding(.leading, 16)
                        }
                        .padding(.leading, 5)
                        .padding(.trailing, 8)
                        HStack {
                            VStack {
                                Image("profile-picture-justin")
                                Spacer()
                            }
                            Spacer()
                            VStack(spacing: 0) {
                                HStack {
                                    Text("Justin Holmes")
                                        .foregroundColor(Color("Brown"))
                                        .font(.custom("Abel-regular", size: 18))
                                    Spacer()
                                    Text("13:11 PM")
                                        .foregroundColor(Color("Brown"))
                                        .font(.custom("Abel-Regular", size: 10))
                                }
                                HStack {
                                    Text("You don't understand! I coulda had class. I coulda been a contender. I could've…")
                                        .foregroundColor(Color("Brown"))
                                        .font(.custom("Abel-regular", size: 14))
                                    Spacer()
                                }
                            }
                            Spacer()
                            Rectangle()
                                .frame(width: 2)
                                .foregroundColor(Color("Violet"))
                                .cornerRadius(.infinity)
                                .padding(.leading, 16)
                        }
                        .padding(.leading, 5)
                        .padding(.trailing, 8)
                    }
                    
                }
                .padding(.vertical, 14)
                .frame(maxWidth: .infinity)
                .background(.white)
                .cornerRadius(12)
                .padding(.top, 7)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Sleep Duration")
                        .font(.custom("Poppins-Bold", size: 14))
                    Image("sleep-duration-chart")
                }
                .padding(16)
                .padding(.bottom, 50)
                .frame(maxWidth: .infinity)
                .background(.white)
                .cornerRadius(12)
                .padding(.top, 7)
            }
            .padding(.horizontal, 22)
            .frame(maxWidth: .infinity)
            .background(Color("BackgroundColor"))
        }
        .navigationBarBackButtonHidden()
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
