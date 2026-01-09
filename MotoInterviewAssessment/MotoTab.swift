//
//  MotoTab.swift
//  MotoInterviewAssessment
//
//  Created by Folahanmi Kolawole on 08/01/2026.
//

import Foundation

enum MotoTab: CaseIterable {
    case home
    case rides
    case wallet
    case profile
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .rides: return "Rides"
        case .wallet: return "Wallet"
        case .profile: return "Profile"
        }
    }
    
    var icon: String {
        switch self {
        case .home: return "home_filled"
        case .rides: return "car"
        case .wallet: return "wallet"
        case .profile: return "profile"
        }
    }
    
    var selectedIcon: String {
        switch self {
        case .home: return "home_filled"
        case .rides: return "car"
        case .wallet: return "wallet"
        case .profile: return "profile"
        }
    }
}
