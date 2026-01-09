//
//  Models.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import Foundation
import SwiftUI


// MARK: - Quick Location Model
struct QuickLocation: Identifiable {
    let id = UUID()
    let icon: String?
    let title: String
    var isAddNew: Bool = false
}

// MARK: - Fare Option Model
struct FareOption: Identifiable {
    let id = UUID()
    let label: String
    let title: String
    let imageName: String
}

// MARK: - Recent Ride Model
struct RecentRide: Identifiable {
    let id = UUID()
    let driverImage: String
    let from: String
    let to: String
    let price: String
    let time: String
}

// MARK: - User Model
struct MotoUser {
    let name: String
    let balance: Double
    let pendingBalance: Double
    
    var formattedBalance: String {
        "Br \(Int(balance))"
    }
    
    var formattedPendingBalance: String {
        "(Br \(Int(pendingBalance)))"
    }
}

// MARK: - Mock Data Provider
enum MockData {
    
    static let currentUser = MotoUser(
        name: "Amanda",
        balance: 170,
        pendingBalance: 65
    )
    
    static let quickLocations: [QuickLocation] = [
        QuickLocation(icon: "plus", title: "Add new", isAddNew: true),
        QuickLocation(icon: "pin", title: "Amala Spot"),
        QuickLocation(icon: nil, title: "Unity Fountain"),
        QuickLocation(icon: nil, title: "Work")
    ]
    
    static let fareOptions: [FareOption] = [
        FareOption(label: "Value", title: "Automatic", imageName: "automatic"),
        FareOption(label: "negotiations", title: "Flex", imageName: "flex"),
        FareOption(label: "Speed", title: "Instant", imageName: "instant")
    ]
    
    static let recentRides: [RecentRide] = [
        RecentRide(
            driverImage: "rider_one",
            from: "Mexico Square",
            to: "Bole Medhanialem",
            price: "Br 320",
            time: "Just now"
        ),
        RecentRide(
            driverImage: "rider_two",
            from: "Bole Intl. Airport",
            to: "Sar Bet",
            price: "Br 480",
            time: "Today at 04:41 PM"
        )
    ]
    
    static func greeting(for hour: Int) -> String {
        switch hour {
        case 0..<12:
            return "Good morning"
        case 12..<17:
            return "Good afternoon"
        default:
            return "Good evening"
        }
    }
}
