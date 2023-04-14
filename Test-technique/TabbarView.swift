//
//  TabbarView.swift
//  Test-technique
//
//  Created by Bilal Dallali on 14/04/2023.
//

import SwiftUI

struct TabbarView: View {

    @State private var isDashboardSelected = true
    @State private var isPhoneUsageSelected = false
    @State private var isSocialMediaSelected = false
    @State private var isAlertsSelected = false
    
    var body: some View {
        ZStack {
            DashboardView()
            VStack {
                Spacer()
                HStack(spacing: 0) {
                    Button {
                        isDashboardSelected = true
                        isPhoneUsageSelected = false
                        isSocialMediaSelected = false
                        isAlertsSelected = false
                    } label: {
                        VStack(spacing: 3) {
                            Image(isDashboardSelected ? "phone-icon-selected" : "phone-icon-unselected")
                            Text("DASHBOARD")
                                .foregroundColor(Color(isDashboardSelected ? "White" : "Violet"))
                                .font(.custom("Poppins-Regular", size: 10))
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color(isDashboardSelected ? "BackgroundColor" : "Tabbar"))
                        .cornerRadius(.infinity)
                    }
                    Button {
                        isDashboardSelected = false
                        isPhoneUsageSelected = true
                        isSocialMediaSelected = false
                        isAlertsSelected = false
                    } label: {
                        VStack(spacing: 3) {
                            Image(isPhoneUsageSelected ? "phone-icon-selected" : "phone-icon-unselected")
                            Text("PHONE USAGE")
                                .foregroundColor(Color(isPhoneUsageSelected ? "White" : "Violet"))
                                .font(.custom("Poppins-Regular", size: 10))
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color(isPhoneUsageSelected ? "BackgroundColor" : "Tabbar"))
                        .cornerRadius(.infinity)
                    }
                    Button {
                        isDashboardSelected = false
                        isPhoneUsageSelected = false
                        isSocialMediaSelected = true
                        isAlertsSelected = false
                    } label: {
                        VStack(spacing: 3) {
                            Image(isSocialMediaSelected ? "phone-icon-selected" : "phone-icon-unselected")
                            Text("SOCIAL MEDIA")
                                .foregroundColor(Color(isSocialMediaSelected ? "White" : "Violet"))
                                .font(.custom("Poppins-Regular", size: 10))
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color(isSocialMediaSelected ? "BackgroundColor" : "Tabbar"))
                        .cornerRadius(.infinity)
                    }
                    Button {
                        isDashboardSelected = false
                        isPhoneUsageSelected = false
                        isSocialMediaSelected = false
                        isAlertsSelected = true
                    } label: {
                        VStack(spacing: 3) {
                            Image(isAlertsSelected ? "phone-icon-selected" : "phone-icon-unselected")
                            Text("ALERTS")
                                .foregroundColor(Color(isAlertsSelected ? "White" : "Violet"))
                                .font(.custom("Poppins-Regular", size: 10))
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color(isAlertsSelected ? "BackgroundColor" : "Tabbar"))
                        .cornerRadius(.infinity)
                    }

                }
                .frame(height: 85)
                .frame(maxWidth: .infinity)
                .background(Color("Tabbar"))
            }
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
