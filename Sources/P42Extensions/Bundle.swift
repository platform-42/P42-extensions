//
//  Bundle.swift
//  shops24
//
//  Created by Diederick de Buck on 02/01/2023.
//

import Foundation


enum BundleProperty {
    static let displayName  = "CFBundleDisplayName"
    static let appVersion   = "CFBundleShortVersionString"
    static let buildVersion = "CFBundleVersion"
}

enum GoogleBundleProperty {
    static let gidClientID = "GIDClientID"
}


public extension Bundle {
    
    var displayName: String? {
        return object(forInfoDictionaryKey: BundleProperty.displayName) as? String
    }
    
    var appVersion: String? {
        return object(forInfoDictionaryKey: BundleProperty.appVersion) as? String
    }
    
    var buildVersion: String? {
        return object(forInfoDictionaryKey: BundleProperty.buildVersion) as? String
    }
    
    var fullVersion: String? {
        switch (appVersion, buildVersion) {
        case let (version?, build?): return "\(version) (\(build))"
        case let (version?, nil):    return version
        case let (nil, build?):      return build
        case (nil, nil):             return nil
        }
    }
    
}


public extension Bundle {

    /// The Google Sign-In client ID (GIDClientID).
    var gidClientID: String? {
        object(forInfoDictionaryKey: GoogleBundleProperty.gidClientID) as? String
    }
}
