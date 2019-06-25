//
//  DayView.swift
//  CalendarView
//
//  Created by Alex Kerendian on 6/25/19.
//  Copyright © 2019 Alexander Kerendian. All rights reserved.
//

import SwiftUI

struct DayView : View {
    
    let width: Length
    let day: Int
    let isEnabled = true
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: width, height: width, alignment: .center)
                .foregroundColor(.white)
                .border(Color.gray, width: 0.5)
            Text("\(day)")
        }
    }
}

#if DEBUG
struct DayView_Previews : PreviewProvider {
    static var previews: some View {
        DayView(width: UIScreen.main.bounds.size.width / 7, day: 1)
    }
}
#endif
