//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Abdurrahman Arıcan on 14.02.2025.
//

import Foundation

extension Date {
    
//    func convertToMonthYearFormat()->String{
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "MMM yyyy"
//        return dateFormatter.string(from: self)
//    }
    
    func convertToMonthYearFormat()->String{
        return formatted(.dateTime.month().year())
    }
}
