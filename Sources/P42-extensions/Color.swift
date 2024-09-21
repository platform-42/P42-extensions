//
//  File.swift
//  
//
//  Created by Diederick de Buck on 21/09/2024.
//

import Foundation
import SwiftUI

public extension Color {
    /// Initializes a Color from a hexadecimal string.
    /// - Parameter hex: A hexadecimal color string in the format `#RRGGBB` or `#AARRGGBB`.
    /// - Returns: A Color instance from the provided hex string, or nil if the string is invalid.
    init?(hex: String) {
        // Remove any non-alphanumeric characters (like #)
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        
        // Ensure the hex string is either 6 or 8 characters long
        guard hex.count == 6 || hex.count == 8 else {
            print("Invalid hex string length. It should be 6 or 8 characters long.")
            return nil
        }

        // Convert the hex string to a UInt64
        var int: UInt64 = 0
        guard Scanner(string: hex).scanHexInt64(&int) else {
            print("Failed to scan hex string into integer.")
            return nil
        }
        
        // Extract ARGB or RGB components
        let a, r, g, b: UInt64
        if hex.count == 6 {
            (a, r, g, b) = (255, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        } else {
            (a, r, g, b) = (int >> 24 & 0xFF, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        }
        
        // Initialize the Color with the extracted RGB(A) values
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
    
    /// Initializes a Color from a hexadecimal integer.
    /// - Parameter hex: A hexadecimal integer representing a color.
    /// - Returns: A Color instance from the provided hex integer.
    init(hex: Int) {
        let r = Double((hex >> 16) & 0xFF) / 255
        let g = Double((hex >> 8) & 0xFF) / 255
        let b = Double(hex & 0xFF) / 255
        let a = Double((hex >> 24) & 0xFF) / 255
        
        self.init(.sRGB, red: r, green: g, blue: b, opacity: a)
    }
}
