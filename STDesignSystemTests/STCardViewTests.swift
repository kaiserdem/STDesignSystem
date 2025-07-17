//
//  STCardViewTests.swift
//  STDesignSystemTests
//
//  Created by Yaroslav Golinskiy on 17/07/2025.
//

import XCTest
import SwiftUI
@testable import STDesignSystem

import XCTest
import SwiftUI
@testable import STDesignSystem

final class STCardViewTests: XCTestCase {
    // MARK: - View Content Tests
    func testCardContent() {
        let testText = "Test Content"
        
        let card = STCardView {
            Text(testText)
        }
        
        XCTAssertNotNil(card)
    }
    
    // MARK: - Style Tests
    func testCardStyleInitialization() {
        // Primary style (default)
        let primaryCard = STCardView { EmptyView() }
        XCTAssertNotNil(primaryCard)
        
        // Secondary style
        let secondaryCard = STCardView(style: .secondary) { EmptyView() }
        XCTAssertNotNil(secondaryCard)
        
        // Outline style
        let outlineCard = STCardView(style: .outline) { EmptyView() }
        XCTAssertNotNil(outlineCard)
    }
}
