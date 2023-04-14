//
//  WelcomePageView.swift
//  Test-technique
//
//  Created by Bilal Dallali on 13/04/2023.
//

import SwiftUI

struct WelcomePageView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                Text("Welcom to 4IN Shield")
                    .foregroundColor(.white)
                    .font(.custom("Abel-regular", size: 30))
                    .padding(.bottom, 53)
                Image("welcome-image")
                NavigationLink {
                    AddDeviceView()
                } label: {
                    HStack {
                        Text("Start")
                            .foregroundColor(Color("FontColor"))
                            .font(.custom("Abel-Regular", size: 18))
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 6, height: 10)
                            .foregroundColor(Color("BackgroundColor"))
                    }
                    .frame(width: 105, height: 50)
                    .background(.white)
                    .cornerRadius(8)
                }

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
        .navigationBarBackButtonHidden()
        }
    }
}

struct WelcomePageView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePageView()
    }
}
