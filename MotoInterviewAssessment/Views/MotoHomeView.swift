//
//  MotoHomeView.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//


import SwiftUI
import MapKit

struct MotoHomeView: View {
    @State private var cameraPosition: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 9.0320, longitude: 38.7469),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
    )
    
    var body: some View {
        ZStack {
            Map(position: $cameraPosition)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                TopNavigationBar()
                    .padding(.horizontal, 20)
                    .padding(.top, 8)
                
                Spacer()
                
                HomeContentSheet()
            }
        }
    }
}

#Preview {
    MotoHomeView()
}
