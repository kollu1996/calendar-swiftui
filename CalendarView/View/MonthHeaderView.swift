//
//  MonthHeaderView.swift
//  CalendarView
//
//  Created by Alex Kerendian on 6/17/19.
//  Copyright © 2019 Alexander Kerendian. All rights reserved.
//

import SwiftUI

struct MonthHeaderView : View {
    var body: some View {
        Text("June 2019")
            .frame(width: UIScreen.main.bounds.size.width, height: 50, alignment: .leading)
            .background(Color.gray)
            .foregroundColor(.white)
    }
}

#if DEBUG
struct MonthHeaderView_Previews : PreviewProvider {
    static var previews: some View {
        MonthHeaderView()
    }
}
#endif
