//
//  DestinationSection.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import SwiftUI

struct DestinationSection: View {
    
    @State private var destination: String = ""
    
    let quickLocations = MockData.quickLocations
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where are you off to?")
                .font(.system(size: 20, weight: .bold))
            
            HStack {
                TextField("Enter destination here", text: $destination)
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(Color(hex: "#808080"))
                
                Button(action: {}) {
                    HStack(spacing: 4) {
                        Image(systemName: "slider.vertical.3")
                            .font(.system(size: 14))
                        Text("Customize")
                            .font(.system(size: 13, weight: .regular))
                    }
                    .foregroundStyle(Color.gray)
                    .padding(14)
                    .background(Color(hex: "#F9FBF9"))
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color(hex: "#EFEFEF"), lineWidth: 0.5)
                    )
                }
            }
            .padding(.trailing, 4)
            .padding(.vertical, 4)
            .padding(.leading, 8)
            .background(Color.white)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(hex: "#EFEFEF"), lineWidth: 0.5)
            )
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(quickLocations) { location in
                        QuickLocationChip(location: location)
                    }
                }
            }
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 8)
        .background(Color(hex: "#F7F8F7"))
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.05), radius: 10, y: 2)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(hex: "#F2F3F2"), lineWidth: 1)
        )
    }
}

#Preview {
    DestinationSection()
}
