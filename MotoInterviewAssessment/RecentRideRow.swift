//
//  RecentRideRow.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import SwiftUI

struct RecentRideRow: View {
    
    let ride: RecentRide
    
    var body: some View {
        HStack(spacing: 12) {
            Image(ride.driverImage)
                .resizable()
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 6) {
                    Text(ride.from)
                        .font(.system(size: 15, weight: .medium))
                        .foregroundStyle(Color(hex: "#2B3B2B"))
                        .lineLimit(1)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                    
                    Text(ride.to)
                        .font(.system(size: 15, weight: .medium))
                        .foregroundStyle(Color(hex: "#2B3B2B"))
                        .lineLimit(1)
                    
                    Spacer()
                    
                    Text(ride.price)
                        .font(.system(size: 15, weight: .medium))
                        .foregroundStyle(Color(hex: "#181B18"))
                }
                
                Text(ride.time)
                    .font(.system(size: 11, weight: .medium))
                    .foregroundStyle(Color(hex: "#798679"))
            }
        }
        .padding(8)
        .background(.white)
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.05), radius: 10, y: 2)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(hex: "#E3E8E3"), lineWidth: 0.5)
        )
    }
}

#Preview {
    RecentRideRow(ride: MockData.recentRides[0])
}
