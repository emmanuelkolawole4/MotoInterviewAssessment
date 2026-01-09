//
//  QuickLocationChip.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import SwiftUI

struct QuickLocationChip: View {
    let location: QuickLocation
    
    var body: some View {
        Button(action: {}) {
            HStack(spacing: 6) {
                if location.isAddNew {
                    Image(systemName: "plus")
                        .font(.system(size: 12, weight: .medium))
                } else if let icon = location.icon {
                    Image(systemName: icon)
                        .font(.system(size: 12))
                }
                
                Text(location.title)
                    .font(.system(size: 14, weight: .medium))
            }
            .foregroundColor(.black)
            .padding(.horizontal, 14)
            .padding(.vertical, 8)
            .background(Color.white)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(hex: "#E8E8E8"), lineWidth: 0.5)
            )
        }
    }
}

#Preview {
    QuickLocationChip(location: .init(icon: "pin", title: "Amala Spot", isAddNew: false))
}
