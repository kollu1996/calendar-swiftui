//
//  Date+Additions.swift
//  CalendarView
//
//  Created by Alex Kerendian on 6/18/19.
//  Copyright © 2019 Alexander Kerendian. All rights reserved.
//

import Foundation

extension Date {
    
    var day: Int {
        return Calendar.current.component(.day, from: self)
    }
    
    var weekday: Int {
        return Calendar.current.component(.weekday, from: self)
    }
    
    var month: Int {
        return Calendar.current.component(.month, from: self)
    }
    
    var year: Int {
        return Calendar.current.component(.year, from: self)
    }
    
    var startOfDay: Date {
        var components = Calendar.current.dateComponents([.day, .month, .year], from: self)
        components.hour = 0
        return Calendar.current.date(from: components) ?? self
    }
    
    var firstDateOfMonth: Date {
        var components = Calendar.current.dateComponents([.day, .month, .year], from: self)
        components.day = 1
        return Calendar.current.date(from: components) ?? self
    }
    
    var lastDateOfMonth: Date {
        var components = Calendar.current.dateComponents([.day, .month, .year], from: self)
        components.day = 0
        components.month = (components.month ?? 0) + 1
        return Calendar.current.date(from: components) ?? self
    }
    
    var firstVisibleDate: Date {
        let firstDate = self.firstDateOfMonth
        let count = firstDate.weekday - 1
        return firstDate.offset(by: -count)
    }
    
    var lastVisibleDate: Date {
        let lastDate = self.lastDateOfMonth
        let count = 7 - lastDate.weekday
        return lastDate.offset(by: count)
    }
    
    func date(with day: Int) -> Date {
        var components = Calendar.current.dateComponents([.day, .month, .year], from: self)
        components.day = day
        return Calendar.current.date(from: components) ?? self
    }
    
    func offset(by day: Int) -> Date {
        Calendar.current.date(byAdding: .day, value: day, to: self) ?? self
    }
    
    func isBetween(_ start: Date, and end: Date) -> Bool {
        return (self >= start) && (self <= end)
    }
}
