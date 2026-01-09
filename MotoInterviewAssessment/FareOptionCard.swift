//
//  FareOptionCard.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import SwiftUI

struct FareOptionCard: View {
    
    let option: FareOption
    
    var body: some View {
        Button(action: {}) {
            VStack(spacing: 10) {
                HStack {
                    Text(option.label)
                        .font(.system(size: 10, weight: .medium))
                        .foregroundStyle(Color(hex: "#717171"))
                    
                    Spacer()
                }
                
                Image(option.imageName)
                    .resizable()
                    .frame(width: 79, height: 79)
                
                Text(option.title)
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(Color(hex: "#303630"))
            }
            .frame(width: 125)
            .frame(maxHeight: 118)
            .padding()
            .background(Color(hex: "#FAFAFA"))
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(hex: "#E2E9E2"), lineWidth: 0.5)
            )
        }
    }
}

#Preview {
    FareOptionCard(option: MockData.fareOptions[0])
}
