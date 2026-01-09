//
//  FareOptionsSection.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import SwiftUI

struct FareOptionsSection: View {
    
    let options = MockData.fareOptions
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Explore Moto's Fare Options")
                .font(.system(size: 13, weight: .medium))
                .foregroundStyle(Color(hex: "#A6ABA6"))
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 6) {
                    ForEach(options) { option in
                        FareOptionCard(option: option)
                    }
                }
            }
        }
    }
}

#Preview {
    FareOptionsSection()
}
