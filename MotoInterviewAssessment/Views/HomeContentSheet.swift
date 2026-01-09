//
//  HomeContentSheet.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import SwiftUI

struct HomeContentSheet: View {
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 10) {
                    HeaderSection()
                        .padding(.top, 24)
                        .padding(.bottom, 16)
                    
                    DestinationSection()
                    
                    FareOptionsSection()
                        .padding(.top)
                    
                    RecentRidesSection()
                        .padding(.top)
                    
                    WithdrawCashSection()
                        .padding(.top, 4)
                    
                    ScanAndGoSection()
                        .padding(.top, 4)
                    
                    Spacer(minLength: 100)
                }
                .padding(.horizontal, 16)
            }
        }
        .background(Color.white)
        .roundedCorners(24, corners: [.topLeft, .topRight])
        .shadow(color: .black.opacity(0.1), radius: 20, y: -5)
    }
}

#Preview {
    HomeContentSheet()
}
