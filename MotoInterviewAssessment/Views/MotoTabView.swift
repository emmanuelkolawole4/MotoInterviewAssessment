//
//  MotoTabView.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//


import SwiftUI

struct MotoTabView: View {
    @State private var selectedTab: MotoTab = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Group {
                switch selectedTab {
                case .home:
                    MotoHomeView()
                case .rides:
                    PlaceholderView(title: "Rides")
                case .wallet:
                    PlaceholderView(title: "Wallet")
                case .profile:
                    PlaceholderView(title: "Profile")
                }
            }
            
            MotoTabBar(selectedTab: $selectedTab)
        }
        .ignoresSafeArea(.keyboard)
    }
}

#Preview {
    MotoTabView()
}
