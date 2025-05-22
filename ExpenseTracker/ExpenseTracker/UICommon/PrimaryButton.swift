//
//  PrimaryButton.swift
//  ExpenseTracker
//
//  Created by Shashank Singh on 23/05/25.
//
import SwiftUI

struct PrimaryButton: View {
    @State var title: String = ""
    var onPressed: (() -> ())?
    public var body: some View {
        Button {
            onPressed?()
        } label: {
            ZStack {
                Image(.primaryBtn)
                    .resizable()
                    .scaledToFit()
                    .frame(width: .screenWidth, height: 50)
                    .cornerRadius(25)
                    .padding(.horizontal, 20)
                
                Text(title)
                    .font(.customFont(.semiBold, fontSize: 16))
                    .padding(.horizontal, 20)
            }
        }
        .foregroundColor(.white)
        .shadow(color: .secondaryC.opacity(0.3), radius: 5, y: 3)
    }
}
