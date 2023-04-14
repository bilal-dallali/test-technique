//
//  AddDeviceView.swift
//  Test-technique
//
//  Created by Bilal Dallali on 13/04/2023.
//

import SwiftUI

struct AddDeviceView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Text("Please add your child’s\ndevices")
                    .foregroundColor(.white)
                    .font(.custom("Abel-Regular", size: 30))
                    .multilineTextAlignment(.center)
                Text("The information from your child’s device will help us to assess their mental health, duration of sleep, places visited, used applications  etc. It also gives you the ability to block or allow installed applications")
                    .foregroundColor(.white)
                    .font(.custom("Poppins-Regular", size: 15))
                    .padding(.top, 6)
                Text("Please follow the following steps:\n1. Bring your child’s mobile phone\n2. Scan this QR code with your child’s device camera\n3. You will be redirected to the 4IN shield application download page\n4. Once the application is installed, click Next ")
                    .foregroundColor(.white)
                    .font(.custom("Poppins-Regular", size: 18))
                    .padding(.top, 26)
                Image("qr-code")
                    .resizable()
                    .frame(width: 169, height: 169)
                HStack(spacing: 45) {
                    NavigationLink {
                        AddProfileView()
                    } label: {
                        Text("Skip")
                            .foregroundColor(Color("FontColor"))
                            .font(.custom("Abel-Regular", size: 18))
                    }
                    .frame(width: 105, height: 50)
                    .background(.white)
                    .cornerRadius(8)
                    
                    NavigationLink {
                        AddProfileView()
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
                .padding(.top, 24)
            }
            .padding(.horizontal, 22)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
        }
        .navigationBarBackButtonHidden()
    }
    
}

struct AddDeviceView_Previews: PreviewProvider {
    static var previews: some View {
        AddDeviceView()
    }
}
