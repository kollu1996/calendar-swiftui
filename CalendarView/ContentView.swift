//
//  ContentView.swift
//  CalendarView
//
//  Created by Alex Kerendian on 6/13/19.
//  Copyright © 2019 Alexander Kerendian. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            WeekdayHeader()
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
