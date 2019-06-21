//
//  Month.swift
//  CalendarView
//
//  Created by Alex Kerendian on 6/20/19.
//  Copyright © 2019 Alexander Kerendian. All rights reserved.
//

import Foundation

typealias Month = Date

extension Month {
    
    var firstDate: Date {
        var components = Calendar.current.dateComponents([.day, .month, .year], from: self)
        components.day = 1
        return Calendar.current.date(from: components) ?? self
    }
    
    var lastDate: Date {
        var components = Calendar.current.dateComponents([.day, .month, .year], from: self)
        components.day = 0
        components.month = (components.month ?? 0) + 1
        return Calendar.current.date(from: components) ?? self
    }
    
    var firstVisibleDate: Date {
        let firstDate = self.firstDate
        let count = firstDate.weekday - 1
        return firstDate.offset(by: -count)
    }
    
    var lastVisibleDate: Date {
        let lastDate = self.lastDate
        let count = 7 - lastDate.weekday
        return lastDate.offset(by: count)
    }
}
