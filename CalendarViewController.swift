//
//  ViewController.swift
//  CalendarApp
//
//  Created by Ai on 2022/05/30.
//

import UIKit
import CalendarKit
import EventKit
class CalendarViewController: DayViewController {
    private let eventStore = EKEventStore()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Calendar"
        requestAccessToCalendar()
    }
    func requestAccessToCalendar(){
        eventStore.requestAccess(to: .event) { success, error in
            
        }
    }

}

