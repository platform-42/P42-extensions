//
//  Double.swift
//  P42-extensions
//
//  Created by Diederick de Buck on 15/02/2026.
//

import Foundation

public extension Double {
    ///
    /// Formats a double as a decimal string.
    /// - Parameters:
    ///   - fractionLength: Number of digits after the decimal point.
    ///   - trimLeadingZero: Remove leading zero for values < 1 (e.g., `0.73` → `.73`).
    ///   - trimTrailingZeros: Remove trailing zeros after decimal (e.g., `.70` → `.7`).
    /// - Returns: Formatted decimal string.
    ///
    func decimalString(
        fractionLength: Int = 2,
        trimLeadingZero: Bool = true,
        trimTrailingZeros: Bool = false
    ) -> String {
        var formatted = String(format: "%.\(fractionLength)f", self)
        
        if trimTrailingZeros, formatted.contains(".") {
            formatted = formatted.replacingOccurrences(
                of: "([0-9]*?)0+$",
                with: "$1",
                options: .regularExpression
            )
        }
        
        if trimLeadingZero, formatted.hasPrefix("0") {
            formatted = String(formatted.dropFirst())
        }
        
        return formatted
    }
    
    init?(
        decimalString: String
    ) {
        let s = decimalString.hasPrefix(".") ? "0" + decimalString : decimalString
        self.init(s)
    }
}
