//
//  DateRange.swift
//  CryptoTracker
//
//  Created by Konstantin Loginov on 03/10/2021.
//

import Foundation

enum DateRange: String, CaseIterable {
    case FiveDays = "5D"
    case OneMonth = "1M"
    case SixMonths = "6M"
    case YearToDate = "YTD"
    case OneYear = "1Y"
    
    var date: Date? {
        // TODO: calculate the date?
        return nil
    }
    
    var period: String {
        if self == .OneYear {
            return "5DAY"
        } else if self == .SixMonths {
            return "2DAY"
        } else if self == .YearToDate {
            // TODO: calculate the YTD
        }
        
        return "1DAY"
    }
}
