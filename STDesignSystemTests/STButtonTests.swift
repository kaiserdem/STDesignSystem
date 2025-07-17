//
//  STDesignSystemTests.swift
//  STDesignSystemTests
//
//  Created by Yaroslav Golinskiy on 17/07/2025.
//

import XCTest
import SwiftUI
@testable import STDesignSystem

final class STButtonTests: XCTestCase {
    func testButtonInitialization() {
        let title = "Test Button"
        let action = {}
        
        let button = STButton(title: title, action: action)
        
        XCTAssertEqual(button.title, title)
        XCTAssertEqual(button.style, .primary) // Перевіряємо що стиль за замовчуванням primary
    }
    
    func testButtonWithCustomStyle() {
        let button = STButton(
            title: "Test",
            style: .secondary,
            action: {}
        )
        
        XCTAssertEqual(button.style, .secondary)
    }
    
    func testButtonWithIcon() {
        let icon = Image(systemName: "star")
        let button = STButton(
            title: "Test",
            icon: icon,
            iconPosition: .leading,
            action: {}
        )
        
        XCTAssertNotNil(button.icon)
        XCTAssertEqual(button.iconPosition, .leading)
    }
    
    // MARK: - UI Tests
    func testButtonStyleColors() {
        let primaryButton = STButton(title: "Primary", style: .primary, action: {})
        let secondaryButton = STButton(title: "Secondary", style: .secondary, action: {})
        let outlineButton = STButton(title: "Outline", style: .outline, action: {})
        
        // Перевіряємо кольори фону
        XCTAssertEqual(primaryButton.backgroundColor, Color(STColors.primary))
        XCTAssertEqual(secondaryButton.backgroundColor, Color(STColors.secondary))
        XCTAssertEqual(outlineButton.backgroundColor, .clear)
        
        // Перевіряємо кольори тексту
        XCTAssertEqual(primaryButton.foregroundColor, .white)
        XCTAssertEqual(secondaryButton.foregroundColor, .white)
        XCTAssertEqual(outlineButton.foregroundColor, Color(STColors.primary))
    }
    
    // MARK: - Action Tests
    func testButtonAction() {
        var actionCalled = false
        
        let button = STButton(title: "Test") {
            actionCalled = true
        }
        
        // Симулюємо натискання кнопки
        button.action()
        
        XCTAssertTrue(actionCalled)
    }
}
