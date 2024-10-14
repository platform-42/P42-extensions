//
//  File.swift
//  
//
//  Created by Diederick de Buck on 14/10/2024.
//

import Foundation


public extension UIApplication {
    
    static func rootViewController() -> UIViewController? {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let rootVC = windowScene.windows.first?.rootViewController else {
            return nil
        }
        return rootVC
    }
}
