//
//  CalendarView.swift
//  CalendarView
//
//  Created by Alex Kerendian on 6/18/19.
//  Copyright © 2019 Alexander Kerendian. All rights reserved.
//

import SwiftUI

struct CalendarView : View {
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            WeekdayHeaderView()
            ScrollView (showsVerticalIndicator: false) {
                VStack (spacing: 1) {
                    ForEach(0..<12) { _ in
                        MonthView()
                    }
                    Divider().background(Color.black)
                    }.background(Color.black)
            }
        }.background(Color.gray)
    }
}

#if DEBUG
struct CalendarView_Previews : PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
#endif
