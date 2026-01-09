//
//  TopNavigationBar.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import SwiftUI

struct TopNavigationBar: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(.hamburgerMenu)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(10)
            }
            .frame(width: 45, height: 45)
            .background(Color.white)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(hex: "#EFEFEF"), lineWidth: 1)
            )
            
            Spacer()
            
            Button(action: {}) {
                Image(.shareArrow)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(10)
            }
            .frame(width: 45, height: 45)
            .background(Color(hex: "#E5E5E5"))
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(hex: "#A4A4A4").opacity(0.7), lineWidth: 0.3)
            )
        }
    }
}

#Preview {
    TopNavigationBar()
}
