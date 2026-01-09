//
//  PlaceholderView.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import SwiftUI

struct PlaceholderView: View {
    let title: String
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.gray.opacity(0.5))
        }
    }
}

#Preview {
    PlaceholderView(title: "Home")
}
