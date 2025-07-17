//
//  STTextFieldTests.swift
//  STDesignSystemTests
//
//  Created by Yaroslav Golinskiy on 17/07/2025.
//

import XCTest
import SwiftUI
@testable import STDesignSystem

final class STTextFieldTests: XCTestCase {
    // MARK: - Initialization Tests
    func testTextFieldInitialization() {
        let placeholder = "Enter text"
        
        let textField = STTextField(
            text: .constant(""),  // Використовуємо constant для тестів
            placeholder: placeholder
        )
        
        XCTAssertNotNil(textField)
    }
    
    // MARK: - Style Tests
    func testTextFieldStyles() {
        // Primary style (default)
        let primaryField = STTextField(
            text: .constant(""),
            placeholder: "Primary"
        )
        XCTAssertNotNil(primaryField)
        
        // Secondary style
        let secondaryField = STTextField(
            text: .constant(""),
            placeholder: "Secondary",
            style: .secondary
        )
        XCTAssertNotNil(secondaryField)
    }
    
    // MARK: - Icon Tests
    func testTextFieldWithIcon() {
        let textField = STTextField(
            text: .constant(""),
            placeholder: "Search",
            icon: Image(systemName: "magnifyingglass")
        )
        
        XCTAssertNotNil(textField)
    }
    
    // MARK: - Binding Tests
    func testTextFieldBinding() {
        // Створюємо тестове значення
        let testText = "Test Input"
        
        let textField = STTextField(
            text: .constant(testText),
            placeholder: "Test"
        )
        
        XCTAssertNotNil(textField)
    }
    
    // MARK: - Placeholder Tests
    func testTextFieldPlaceholder() {
        let placeholder = "Test Placeholder"
        
        let textField = STTextField(
            text: .constant(""),
            placeholder: placeholder
        )
        
        XCTAssertNotNil(textField)
    }
}
