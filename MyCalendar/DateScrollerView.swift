//
//  DateScrollerView.swift
//  MyCalendar
//
//  Created by Ai on 2022/05/29.

//
//  DateScrollerView.swift
//  MyCal
//
//  Created by Ai on 2022/05/28.
//

import SwiftUI

struct DateScrollerView: View {
    
    @EnvironmentObject var dateHolder: DateHolder

    var body: some View {
       
        HStack
        {
            Spacer()
            Button(action: previousMonth)
            {
                Image(systemName: "arrow-left")
                    .imageScale(.large)
                    .font(Font.title.weight(.bold))
                
            }
            Text(CalendarHelper().monthYearString(dateHolder.date))
                .font(.title)
                .bold()
                .animation(.none)
                .frame(minWidth: .infinity)
            Button(action: nextMonth)
            {
                Image(systemName: "arrow-right")
                    .imageScale(.large)
                    .font(Font.title.weight(.bold))
                
            }
            
            Spacer()
        }
    }
    
    func previousMonth()
    {
        dateHolder.date = CalendarHelper().minusMonth(dateHolder.date)
    }
    
    func nextMonth()
    {
        dateHolder.date = CalendarHelper().plusMonth(dateHolder.date)

    }
}

struct DateScrollerView_Previews: PreviewProvider {
    static var previews: some View {
        DateScrollerView()
    }
}
