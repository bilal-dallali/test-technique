//
//  CongratsView.swift
//  Test-technique
//
//  Created by Bilal Dallali on 13/04/2023.
//

import SwiftUI

struct CongratsView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Text("Congratulation!")
                    .foregroundColor(.white)
                    .font(.custom("Poppins-Bold", size: 22))
                    .multilineTextAlignment(.center)
                Text("You have successfully completed your child profile.")
                    .foregroundColor(.white)
                    .font(.custom("Poppins-Regular", size: 22))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                Image("verified")
                Image("congrat-icon")
                    .padding(.top, 34)
                HStack(spacing: 23) {
                    NavigationLink {
                        AddChildView()
                    } label: {
                        Text("Add another child")
                            .foregroundColor(Color("FontColor"))
                            .font(.custom("Abel-Regular", size: 18))
                    }
                    .frame(width: 141, height: 50)
                    .background(.white)
                    .cornerRadius(8)
                    
                    NavigationLink {
                        CongratsEndView()
                    } label: {
                        HStack(spacing: 28) {
                            Text("Continue")
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
                .padding(.horizontal, 40)
                .padding(.top, 37)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
        }
        .navigationBarBackButtonHidden()
    }
}

struct CongratsView_Previews: PreviewProvider {
    static var previews: some View {
        CongratsView()
    }
}
