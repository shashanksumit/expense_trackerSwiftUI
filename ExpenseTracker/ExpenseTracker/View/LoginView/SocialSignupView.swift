//
//  SocialSignupView.swift
//  ExpenseTracker
//
//  Created by Shashank Singh on 23/05/25.
//

import SwiftUI

struct SocialSignupView: View {
    var body: some View {
        ZStack {
            Image(.welcomeScreen)
                .resizable()
                .scaledToFit()
                .frame(width: .screenWidth, height: .screenHeight)
            VStack {
                Image(.appLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInset + 8)
                Spacer()
                
                Button {
                    
                } label: {
                    ZStack {
                        Image(.appleBtn)
                            .resizable()
                            .scaledToFill()
                            .frame(width: .screenWidth, height: 50)
                        HStack {
                            Image(.apple)
                                .resizable()
                                .scaledToFill()
                                .padding(.horizontal, 20)
                                .frame(width: 20, height: 20)
                            Text("Signup with Apple")
                                .font(.customFont(.semiBold, fontSize: 16))
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.3), radius: 5, y: 3)
                .padding(.horizontal, 20)
                
                Button {
                    
                } label: {
                    ZStack {
                        Image(.googleBtn)
                            .resizable()
                            .scaledToFill()
                            .frame(width: .screenWidth, height: 50)
                        HStack {
                            Image(.google)
                                .resizable()
                                .scaledToFill()
                                .padding(.horizontal, 20)
                                .frame(width: 20, height: 20)
                            Text("Signup with Google")
                                .font(.customFont(.semiBold, fontSize: 16))
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .foregroundColor(.grayC)
                .shadow(color: .white.opacity(0.3), radius: 5, y: 3)
                .padding(.horizontal, 20)
                
                
                Button {
                    
                } label: {
                    ZStack {
                        Image(.fbBtn)
                            .resizable()
                            .scaledToFill()
                            .frame(width: .screenWidth, height: 50)
                        HStack {
                            Image(.fb)
                                .resizable()
                                .scaledToFill()
                                .padding(.horizontal, 20)
                                .frame(width: 20, height: 20)
                            Text("Signup with Facebook")
                                .font(.customFont(.semiBold, fontSize: 16))
                                .foregroundColor(.white)
                        }
                        
                    }
                } .padding(.bottom, 10)
                
                Text("OR")
                    .multilineTextAlignment(.center)
                    .font(.customFont(.regular, fontSize: 16))
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                
                .padding(.bottom, 10)
                SecondaryButton(title: "Signup with E-Mail") {
                    print("Secondary Button Tapped")
                }
                .padding(.bottom, 20)
                
                Text("By registerning, you agree to our Terms of Service and Privacy Policy. Learn how we collect, use, and share your data.")
                    .multilineTextAlignment(.center)
                    .font(.customFont(.regular, fontSize: 16))
                    .padding(.horizontal, 20)
                    .foregroundColor(.gray60)
                    .padding(.bottom, .bottomInset + 8)
            }
        }
        .ignoresSafeArea()
        .background(Color.gray80)
    }
}

#Preview {
    SocialSignupView()
}
