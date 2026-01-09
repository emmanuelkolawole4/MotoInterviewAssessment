//
//  HeaderSection.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import SwiftUI

struct HeaderSection: View {
    
    private var greeting: String {
        let hour = Calendar.current.component(.hour, from: Date())
        return MockData.greeting(for: hour)
    }
    
    var body: some View {
        HStack {
            HStack(spacing: 5) {
                Text("\(greeting), ")
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(Color(hex: "#7D827D"))
                
                Text("Amanda")
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(Color(hex: "#323432"))
            }
            
            Spacer()
            
            HStack(spacing: 4) {
                Image(.award)
                    .resizable()
                    .frame(width: 16, height: 16)
                
                Text("Br 170")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(Color(hex: "#292D32"))
                
                Image(systemName: "arrow.down")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(Color(hex: "#666666"))
                
                Text("(Br 65)")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(Color(hex: "#666666"))
                    .italic()
            }
        }
    }
}

#Preview {
    HeaderSection()
}
