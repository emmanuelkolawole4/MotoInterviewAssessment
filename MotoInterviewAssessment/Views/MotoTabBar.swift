//
//  MotoTabBar.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import SwiftUI

struct MotoTabBar: View {
    @Binding var selectedTab: MotoTab
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(MotoTab.allCases, id: \.self) { tab in
                TabBarItem(
                    tab: tab,
                    isSelected: selectedTab == tab
                ) {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        selectedTab = tab
                    }
                }
            }
        }
        .padding(.horizontal, 24)
        .padding(.top, 12)
        .padding(.bottom, 8)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .background(
            Color.white
                .ignoresSafeArea(edges: .bottom)
        )
        .shadow(color: .black.opacity(0.08), radius: 20, y: -5)
    }
}

#Preview {
    MotoTabBar(selectedTab: .constant(.home))
}
