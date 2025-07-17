//
//  STTextField.swift
//  STDesignSystem
//
//  Created by Yaroslav Golinskiy on 16/07/2025.
//

import SwiftUI

public enum STTextFieldStyle {
    case primary
    case secondary
}

public struct STTextField: View {
    // MARK: - Properties
    private let placeholder: String
    private let style: STTextFieldStyle
    private let icon: Image?
    @Binding private var text: String
    
    // MARK: - Initialization
    public init(
        text: Binding<String>,
        placeholder: String,
        style: STTextFieldStyle = .primary,
        icon: Image? = nil
    ) {
        self._text = text
        self.placeholder = placeholder
        self.style = style
        self.icon = icon
    }
    
    // MARK: - Private Properties
    private var backgroundColor: Color {
        switch style {
        case .primary:
            return Color(STColors.background)
        case .secondary:
            return Color(STColors.secondary)
        }
    }
    
    // MARK: - Body
    public var body: some View {
        HStack(spacing: STSpacing.TextField.iconSpacing) {
            if let icon = icon {
                icon
                    .foregroundColor(Color(STColors.secondary))
            }
            
            TextField(placeholder, text: $text)
                .font(STTypography.input)
        }
        .padding(.horizontal, STSpacing.TextField.horizontalPadding)
        .padding(.vertical, STSpacing.TextField.verticalPadding)
        .background(backgroundColor)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(STColors.secondary).opacity(0.3), lineWidth: 1)
        )
    }
}
