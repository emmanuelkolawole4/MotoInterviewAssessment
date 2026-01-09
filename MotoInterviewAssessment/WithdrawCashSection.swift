//
//  WithdrawCashSection.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import SwiftUI

struct WithdrawCashSection: View {
    
    var body: some View {
        HStack(spacing: 16) {
            Image(.withdrawCash)
                .resizable()
                .frame(width: 86, height: 71)
            
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Withdraw cash")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundStyle(Color(hex: "#3D4947"))
                    
                    Text("Get cash from\nnearby agents")
                        .font(.system(size: 15, weight: .regular))
                        .foregroundStyle(Color(hex: "#9AADA9"))
                        .lineSpacing(2)
                }
                
                Spacer()
                
                Button(action: {}) {
                    HStack(spacing: 6) {
                        Image(.cashLine)
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Withdraw")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundStyle(Color(hex: "#F2FFEC"))
                    }
                    .padding(8)
                    .background(Color(hex: "#389E0D"))
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color(hex: "#9EEB8F"), lineWidth: 0.7)
                    )
                }
            }
            
            
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 20)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.05), radius: 10, y: 2)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(hex: "#E2E9E2"), lineWidth: 1)
        )
    }
}

#Preview {
    WithdrawCashSection()
}
