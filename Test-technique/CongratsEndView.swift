//
//  CongratsEndView.swift
//  Test-technique
//
//  Created by Bilal Dallali on 13/04/2023.
//

import SwiftUI

struct CongratsEndView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 92) {
                Text("Thank you for your confidence in us.")
                    .foregroundColor(.white)
                    .font(.custom("Poppins-Bold", size: 22))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 50)
                VStack(spacing: 118) {
                    Image("logo-bigger")
                    NavigationLink {
                        TabbarView()
                    } label: {
                        HStack(spacing: 5) {
                            Text("Go to dashboard")
                                .foregroundColor(Color("FontColor"))
                                .font(.custom("Abel-Regular", size: 18))
                            Image(systemName: "chevron.right")
                                .resizable()
                                .frame(width: 6, height: 10)
                                .foregroundColor(Color("FontColor"))
                        }
                    }
                    .frame(width: 152, height: 50)
                    .background(.white)
                    .cornerRadius(8)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
        }
        .navigationBarBackButtonHidden()
    }
}

struct CongratsEndView_Previews: PreviewProvider {
    static var previews: some View {
        CongratsEndView()
    }
}
