//
//  STButton.swift
//  STDesignSystem
//
//  Created by Yaroslav Golinskiy on 16/07/2025.
//

import SwiftUI

public enum STButtonStyle {
    case primary, secondary, outline
}

public enum STButtonIconPosition {
    case leading, trailing
}

public struct STButton: View {
    
    public let icon: Image?
    public let iconPosition: STButtonIconPosition
    
    public let title: String
    public let action: () -> Void
    public let style: STButtonStyle
    
    public init(
        title: String,
        style: STButtonStyle = .primary,
        icon: Image? = nil,
        iconPosition: STButtonIconPosition = .leading,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.style = style
        self.icon = icon
        self.iconPosition = iconPosition
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            HStack(spacing: STSpacing.Button.iconSpacing) {
                if let icon = icon, iconPosition == .leading {
                    icon
                        .foregroundColor(foregroundColor)
                }
                
                Text(title)
                    .font(STTypography.button)
                    .foregroundColor(foregroundColor)
                
                if let icon = icon, iconPosition == .trailing {
                    icon
                        .foregroundColor(foregroundColor)
                }
            }
            .padding(.horizontal, STSpacing.Button.horizontalPadding)
            .padding(.vertical, STSpacing.Button.verticalPadding)
        }
        .background(backgroundColor)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(borderColor, lineWidth: style == .outline ? 2 : 0)
        )
    }
    
    
    internal var backgroundColor: Color {
        switch style {
        case .primary:
            return Color(STColors.primary)
        case .secondary:
            return Color(STColors.secondary)
        case .outline:
            return .clear
        }
    }

    internal var foregroundColor: Color {
        switch style {
        case .primary, .secondary:
            return .white
        case .outline:
            return Color(STColors.primary)
        }
    }

    internal var borderColor: Color {
        style == .outline ? Color(STColors.primary) : .clear
    }
    
}
