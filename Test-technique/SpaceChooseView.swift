//
//  SpaceChooseView.swift
//  Test-technique
//
//  Created by Bilal Dallali on 13/04/2023.
//

import SwiftUI

struct SpaceChooseView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 83) {
                Text("Who is going to use\nthis device?")
                    .foregroundColor(.white)
                    .font(.custom("Abel-regular", size: 30))
                    .padding(.bottom, 18)
                    .multilineTextAlignment(.center)
                VStack(spacing: 0) {
                    NavigationLink {
                        WelcomePageView()
                    } label: {
                        ZStack {
                            HStack {
                                Text("Parents")
                                    .foregroundColor(Color("BackgroundColor"))
                                    .font(.custom("Poppins-Bold", size: 24))
                                    .padding(.leading, 54)
                                Spacer()
                            }
                            .frame(height: 165)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(12)
                            HStack {
                                Spacer()
                                Image("parent-icon")
                                    .padding(.bottom, 42)
                            }
                        }
                    }
                    
                    NavigationLink {
                        WelcomePageView()
                    } label: {
                        ZStack {
                            HStack {
                                Text("Child")
                                    .foregroundColor(Color("BackgroundColor"))
                                    .font(.custom("Poppins-Bold", size: 24))
                                    .padding(.leading, 54)
                                Spacer()
                            }
                            .frame(height: 173)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(12)
                            HStack {
                                Spacer()
                                Image("child-icon")
                                    .padding(.bottom, 12)
                            }
                        }
                    }

                }
                .padding(.horizontal, 47)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
        }
        .navigationBarBackButtonHidden()
    }
}

struct SpaceChooseView_Previews: PreviewProvider {
    static var previews: some View {
        SpaceChooseView()
    }
}
