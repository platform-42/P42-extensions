//
//  Bundle.swift
//  shops24
//
//  Created by Diederick de Buck on 02/01/2023.
//

import Foundation


public enum BundleProperty: String {
    case displayName = "CFBundleDisplayName"
    case appVersion = "CFBundleShortVersionString"
    case buildVersion = "CFBundleVersion"
}

public extension Bundle {
    
    var displayName: String? {
        return object(forInfoDictionaryKey: BundleProperty.displayName.rawValue) as? String
    }
    
    var appVersion: String? {
        return object(forInfoDictionaryKey: BundleProperty.appVersion.rawValue) as? String
    }
    
    var buildVersion: String? {
        return object(forInfoDictionaryKey: BundleProperty.buildVersion.rawValue) as? String
    }
}
