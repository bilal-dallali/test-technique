//
//  ConfirmProfileView.swift
//  Test-technique
//
//  Created by Bilal Dallali on 13/04/2023.
//

import SwiftUI

struct ConfirmProfileView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Spacer()
                Text("Your child’s profile information has been successfully added")
                    .foregroundColor(.white)
                    .font(.custom("Abel-Regular", size: 30))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                Image("verified")
                    .padding(.top, 26)
                Image("confirm-profile-icon")
                    .padding(.top, 23)
                HStack(spacing: 48) {
                    NavigationLink {
                        AddChildView()
                    } label: {
                        Text("Add new profile")
                            .foregroundColor(Color("FontColor"))
                            .font(.custom("Abel-Regular", size: 18))
                    }
                    .frame(width: 149, height: 50)
                    .background(.white)
                    .cornerRadius(8)
                    
                    Button {
                        //
                    } label: {
                        HStack(spacing: 8) {
                            Text("Continue")
                                .foregroundColor(Color("FontColor"))
                                .font(.custom("Abel-Regular", size: 18))
                            Image(systemName: "chevron.right")
                                .resizable()
                                .frame(width: 6, height: 10)
                                .foregroundColor(Color("FontColor"))
                        }
                    }
                    .frame(width: 149, height: 50)
                    .background(.white)
                    .cornerRadius(8)
                }
                .padding(.top, 31)
                Button {
                    //
                } label: {
                    Text("Modify profile information")
                        .foregroundColor(Color("FontColor"))
                        .font(.custom("Abel-Regular", size: 18))
                }
                .frame(width: 205, height: 50)
                .background(.white)
                .cornerRadius(8)
                .padding(.top, 15)
                .padding(.bottom, 31)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
        }
        .navigationBarBackButtonHidden()
    }
}

struct ConfirmProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmProfileView()
    }
}
