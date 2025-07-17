//
//  STTypography.swift
//  STDesignSystem
//
//  Created by Yaroslav Golinskiy on 16/07/2025.
//

import SwiftUI

public enum STTypography {
    // MARK: - Заголовки
    public static let largeTitle = Font.system(size: 34, weight: .bold)
    public static let title1 = Font.system(size: 28, weight: .semibold)
    public static let title2 = Font.system(size: 22, weight: .semibold)
    public static let title3 = Font.system(size: 20, weight: .semibold)
    
    // MARK: - Основний текст
    public static let body = Font.system(size: 17, weight: .regular)
    public static let bodyBold = Font.system(size: 17, weight: .semibold)
    public static let bodySmall = Font.system(size: 15, weight: .regular)
    public static let bodySmallBold = Font.system(size: 15, weight: .semibold)
    
    // MARK: - Додатковий текст
    public static let caption = Font.system(size: 12, weight: .regular)
    public static let captionBold = Font.system(size: 12, weight: .semibold)
    
    // MARK: - Спеціальні шрифти
    public static let button = Font.system(size: 17, weight: .semibold)
    public static let input = Font.system(size: 17, weight: .regular)
}

// MARK: - Розширення для зручного використання
public extension View {
    func titleStyle() -> some View {
        self.font(STTypography.title1)
    }
    
    func bodyStyle() -> some View {
        self.font(STTypography.body)
    }
    
    func captionStyle() -> some View {
        self.font(STTypography.caption)
    }
    
    func buttonStyle() -> some View {
        self.font(STTypography.button)
    }
}
