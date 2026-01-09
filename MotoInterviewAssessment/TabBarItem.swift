//
//  TabBarItem.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import SwiftUI

struct TabBarItem: View {
    let tab: MotoTab
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                Image(isSelected ? tab.selectedIcon : tab.icon)
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundColor(isSelected ? .black : .gray)
                
                Text(tab.title)
                    .font(.system(size: 12, weight: isSelected ? .medium : .regular))
                    .foregroundColor(isSelected ? .black : .gray)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    TabBarItem(tab: .home, isSelected: true, action: {})
}
