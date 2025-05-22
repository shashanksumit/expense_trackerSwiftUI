//
//  SignupView.swift
//  ExpenseTracker
//
//  Created by Shashank Singh on 23/05/25.
//

import SwiftUI

struct SignupView: View {
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
                Text("Welcome to Expense Tracker")
                    .multilineTextAlignment(.center)
                    .font(.customFont(.regular, fontSize: 16))
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                
                PrimaryButton(title: "Get Started") {
                    print("Button Tapped")
                }
                .padding(.bottom, 10)
                SecondaryButton(title: "I have an account") {
                    print("Secondary Button Tapped")
                }
                .padding(.bottom, .bottomInset)
            }
        }
        .ignoresSafeArea()
        .background(Color.gray80)
    }
}

#Preview {
    SignupView()
}
