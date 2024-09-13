//
//  Date.swift
//  shops24
//
//  Created by Diederick de Buck on 11/11/2022.
//

import Foundation


public enum DateTimeFormat: String {
    case short = "MMM d, hh:mm"
    case iso = "yyyy-MM-dd'T'00:00:00.000"
    case date = "yyyy-MM-dd"
}


public extension Date {
    func toString(_ format: DateTimeFormat) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format.rawValue
        return dateformat.string(from: self)
    }
    
    static func ISOStringFromDate(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateTimeFormat.iso.rawValue
        return dateFormatter.string(from: date).appending("Z")
    }
    
    var today: Date {
        return Calendar.current.date(byAdding: .day, value: -31, to: self)!
    }
    
    var tomorrow: Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: self)!
    }

    var yesterday: Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: self)!
    }

    var lastWeek: Date {
        return Calendar.current.date(byAdding: .day, value: -7, to: self)!
    }
}
