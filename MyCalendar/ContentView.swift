//
//  ContentView.swift
//  MyCalendar
//
//  Created by Ai on 2022/05/29.
//

//
//  ContentView.swift
//  MyCal
//
//  Created by Ai on 2022/05/28.
//

import SwiftUI

struct ContentView: View
{
    
  @EnvironmentObject var dateHolder: DateHolder

    var body: some View
    {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
