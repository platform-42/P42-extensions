//
//  String.swift
//  shops24
//
//  Created by Diederick de Buck on 29/06/2023.
//

import Foundation


public extension String {
    func removePostfix(_ postfix: String) -> String {
        if self.hasSuffix(postfix) {
            let endIndex = self.index(self.endIndex, offsetBy: -postfix.count)
            return String(self[..<endIndex])
        }
        return self
    }
    
}
