//
//  STCardView.swift
//  STDesignSystem
//
//  Created by Yaroslav Golinskiy on 16/07/2025.
//

import SwiftUI

public enum STCardStyle {
    case primary
    case secondary
    case outline
}

public struct STCardView<Content: View>: View {
    // MARK: - Properties
    private let style: STCardStyle
    private let content: Content
    private let isInteractive: Bool
    private let action: (() -> Void)?
    
    // MARK: - Initialization
    public init(
        style: STCardStyle = .primary,
        isInteractive: Bool = false,
        action: (() -> Void)? = nil,
        @ViewBuilder content: () -> Content
    ) {
        self.style = style
        self.content = content()
        self.isInteractive = isInteractive
        self.action = action
    }
    
    // MARK: - Private Properties
    private var backgroundColor: Color {
        switch style {
        case .primary:
            return Color(STColors.cardBackground)
        case .secondary:
            return Color(STColors.secondary)
        case .outline:
            return .clear
        }
    }
    
    private var borderColor: Color {
        switch style {
        case .outline:
            return Color(STColors.primary)
        default:
            return .clear
        }
    }
    
    // MARK: - Body
    public var body: some View {
        Group {
            if isInteractive {
                Button(action: action ?? {}) {
                    cardContent
                }
            } else {
                cardContent
            }
        }
    }
    
    // MARK: - Private Views
    private var cardContent: some View {
        content
            .padding(STSpacing.Card.padding)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(STSpacing.Card.cornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: STSpacing.Card.cornerRadius)
                    .stroke(borderColor, lineWidth: style == .outline ? 1 : 0)
            )
            .shadow(
                color: Color.black.opacity(0.05),
                radius: 8,
                x: 0,
                y: 2
            )
    }
}
