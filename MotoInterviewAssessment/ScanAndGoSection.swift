//
//  ScanAndGoSection.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import SwiftUI

struct ScanAndGoSection: View {
    
    var body: some View {
        HStack(spacing: 12) {
            Image(.qrcode)
                .resizable()
                .frame(width: 30, height: 26)
            
            Text("Moto Scan and Go")
                .font(.system(size: 18, weight: .medium))
                .foregroundStyle(Color(hex: "#3D4947"))
            
            Spacer()
            
            Button(action: {}) {
                HStack(spacing: 4) {
                    Text("Learn More")
                        .font(.system(size: 12, weight: .medium))
                    Image(systemName: "arrow.right")
                        .font(.system(size: 20, weight: .semibold))
                }
                .foregroundStyle(Color(hex: "#558E54"))
                .padding(12)
                .background(Color.white)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color(hex: "#0D260D"), lineWidth: 0.2)
                )
            }
        }
        .padding(16)
        .background(Color(hex: "#FEFEFE"))
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.05), radius: 10, y: 2)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(hex: "#E1E1E1"), lineWidth: 0.4)
        )
    }
}

#Preview {
    ScanAndGoSection()
}
