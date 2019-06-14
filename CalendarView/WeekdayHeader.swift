//
//  WeekdayHeader.swift
//  CalendarView
//
//  Created by Alex Kerendian on 6/14/19.
//  Copyright © 2019 Alexander Kerendian. All rights reserved.
//

import SwiftUI

struct WeekdayHeader : View {
    
    let weekDays = ["S", "M", "T", "W", "T", "F", "S"]
    
    var body: some View {
        HStack {
            Spacer()
            ForEach(weekDays.identified(by: \.self)) { weekday in
                Text(weekday)
                    .padding(.horizontal)
                Spacer()
            }
            }.frame(width: UIScreen.main.bounds.size.width, height: 40).background(Color.gray)
    }
}

#if DEBUG
struct WeekdayHeader_Previews : PreviewProvider {
    static var previews: some View {
        WeekdayHeader()
    }
}
#endif
