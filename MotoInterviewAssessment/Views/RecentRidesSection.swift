//
//  RecentRidesSection.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import SwiftUI

struct RecentRidesSection: View {
    let rides = MockData.recentRides
    
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text("RECENT RIDES")
                    .tracking(0.5)
                    .font(.system(size: 11, weight: .medium))
                    .foregroundStyle(Color(hex: "#A6ABA6"))
                
                Spacer()
                
                Button(action: {}) {
                    HStack(spacing: 4) {
                        Text("See all")
                            .font(.system(size: 12))
                        Image(systemName: "chevron.right")
                            .font(.system(size: 16))
                    }
                    .foregroundStyle(Color(hex: "#A6ABA6"))
                }
            }
            
            VStack(spacing: 4) {
                ForEach(Array(rides.enumerated()), id: \.element.id) { index, ride in
                    RecentRideRow(ride: ride)
                }
            }
            .padding(4)
            .background(Color(hex: "#FAFAFA"))
            .cornerRadius(16)
            .shadow(color: .black.opacity(0.05), radius: 10, y: 2)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(hex: "#E3E9E3"), lineWidth: 0.5)
            )
        }
    }
}

#Preview {
    RecentRidesSection()
}
