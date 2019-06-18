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
        VStack (alignment: .leading, spacing: 1) {
            MonthHeaderView()
            ForEach(0..<4) { _ in
                HStack (spacing: 1) {
                    ForEach(0..<7) { _ in
                        Color.gray
                            .frame(width: (UIScreen.main.bounds.size.width - 6) / 7, height: (UIScreen.main.bounds.size.width - 5) / 7)
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
