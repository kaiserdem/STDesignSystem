//
//  STSpacing.swift
//  STDesignSystem
//
//  Created by Yaroslav Golinskiy on 16/07/2025.
//

import SwiftUI

public enum STSpacing {
    // MARK: - Базові відступи
    public static let xxxs: CGFloat = 2
    public static let xxs: CGFloat = 4
    public static let xs: CGFloat = 8
    public static let sm: CGFloat = 12
    public static let md: CGFloat = 16
    public static let lg: CGFloat = 24
    public static let xl: CGFloat = 32
    public static let xxl: CGFloat = 40
    public static let xxxl: CGFloat = 48
    
    // MARK: - Спеціальні відступи для компонентів
    public enum Button {
        public static let horizontalPadding: CGFloat = STSpacing.md  // 16
        public static let verticalPadding: CGFloat = STSpacing.sm    // 12
        public static let iconSpacing: CGFloat = STSpacing.xs        // 8
    }
    
    public enum Card {
        public static let padding: CGFloat = STSpacing.md           // 16
        public static let spacing: CGFloat = STSpacing.sm           // 12
        public static let cornerRadius: CGFloat = STSpacing.xs      // 8
    }
    
    public enum TextField {
        public static let horizontalPadding: CGFloat = STSpacing.md // 16
        public static let verticalPadding: CGFloat = STSpacing.sm   // 12
        public static let iconSpacing: CGFloat = STSpacing.xs       // 8
    }
    
    // MARK: - Контейнери
    public enum Container {
        public static let screenEdge: CGFloat = STSpacing.md       // 16
        public static let sectionSpacing: CGFloat = STSpacing.xl   // 32
        public static let groupSpacing: CGFloat = STSpacing.md     // 16
    }
}

// MARK: - View Extensions
public extension View {
    func standardPadding() -> some View {
        self.padding(.horizontal, STSpacing.Container.screenEdge)
    }
    
    func cardPadding() -> some View {
        self.padding(STSpacing.Card.padding)
    }
}
