//
//  MonthView.swift
//  CalendarView
//
//  Created by Alex Kerendian on 6/17/19.
//  Copyright © 2019 Alexander Kerendian. All rights reserved.
//

import SwiftUI

struct MonthView : View {
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            MonthHeaderView()
            ForEach(0..<5) { i in
                HStack (spacing: 0) {
                    ForEach(1...7) { j in
                        DayView(width: UIScreen.main.bounds.size.width / 7, day: (i * 7) + j)
                    }
                }
            }
        }
    }
}

#if DEBUG
struct MonthView_Previews : PreviewProvider {
    static var previews: some View {
        MonthView()
    }
}
#endif
