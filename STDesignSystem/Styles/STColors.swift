//
//  STColors.swift
//  STDesignSystem
//
//  Created by Yaroslav Golinskiy on 16/07/2025.
//

import SwiftUI

public enum STColors {
    
    //public static let cardBackground = UIColor.systemBackground
    
    public static let primary = Color(
        red: 0.2,
        green: 0.4,
        blue: 0.9
    )
    
    public static let secondary = Color(
        red: 0.4,
        green: 0.4,
        blue: 0.4
    )
    
    // Фонові кольори
    public static let background = Color(
        red: 0.97,
        green: 0.97,
        blue: 0.98
    )
    
    public static let cardBackground = Color(
        red: 1.0,
        green: 1.0,
        blue: 1.0
    )
    
    public static let success = Color.green
    public static let warning = Color.orange
    public static let error = Color.red
    public static let info = Color.blue
    
    public static func dynamicColor(
        light: Color,
        dark: Color
    ) -> Color {
        #if os(iOS)
        return Color(uiColor: UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return UIColor(dark)
            default:
                return UIColor(light)
            }
        })
        #else
        return light
        #endif
    }
}
