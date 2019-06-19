//
//  DateRange.swift
//  CalendarView
//
//  Created by Alex Kerendian on 6/19/19.
//  Copyright © 2019 Alexander Kerendian. All rights reserved.
//

import Foundation

struct DateRange: Sequence, IteratorProtocol {
    
    // MARK: - Properties
    
    let start: Date
    let end: Date
    let increment: Calendar.Component
    
    private var currentDate: Date?
    
    // MARK: - Initializer
    
    init(from start: Date, to end: Date, incrementedBy increment: Calendar.Component) {
        self.start = start
        self.end = end
        self.increment = increment
        self.currentDate = start
    }
    
    // MARK: - Iterator Protocol
    
    mutating func next() -> Date? {
        guard let date = currentDate, date <= end else { return nil }
        currentDate = Calendar.current.date(byAdding: increment, value: 1, to: date)
        return date
    }
}
