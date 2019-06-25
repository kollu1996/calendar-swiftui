//
//  WeekdayHeaderView.swift
//  CalendarView
//
//  Created by Alex Kerendian on 6/17/19.
//  Copyright © 2019 Alexander Kerendian. All rights reserved.
//

import SwiftUI

struct WeekdayHeaderView : View {
    
    let weekdays = Calendar.current.veryShortWeekdaySymbols
    
    var body: some View {
        VStack (spacing: 0) {
            HStack {
                Spacer()
                ForEach(weekdays.identified(by: \.self)) { weekday in
                    Text(weekday)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    Spacer()
                }
                }.frame(width: UIScreen.main.bounds.size.width, height: 50).background(Color.gray)
            
            Color.black.frame(width: UIScreen.main.bounds.size.width, height: 1, alignment: .leading)
        }
    }
}

#if DEBUG
struct WeekdayHeaderView_Previews : PreviewProvider {
    static var previews: some View {
        WeekdayHeaderView()
    }
}
#endif
