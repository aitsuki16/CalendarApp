//
//  MyCal.swift
//  MyCalendar
//
//  Created by Ai on 2022/05/29.
//

import SwiftUI

@main
struct MyCal: App {
    var body: some Scene {
        WindowGroup {
            let dateHolder = DateHolder()
            ContentView()
                .environmentObject(dateHolder)
        }
    }
}
