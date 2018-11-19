//
//  CalendarViewController.swift
//  Vehicle App
//
//  Created by period2 on 11/1/18.
//  Copyright © 2018 TK. All rights reserved.


import UIKit
import Firebase
import FirebaseDatabase
import JTAppleCalendar
//
class CalendarViewController: UIViewController
//    , JTAppleCalendarViewDelegate, JTAppleCalendarViewDataSource
{
//
    var busesArray = [Bus]()
//    @IBOutlet weak var calendarMenuView: JTCalendarMenuView!
//    @IBOutlet weak var calendarContentView: JTHorizontalCalendarView!
//    @IBOutlet var calendarManager : JTCalendarManager!

    var todayDate = NSDate()
    var minDate = NSDate()
    var maxDate = NSDate()
    var dateSelected = NSDate()

    var cars = false
    var vans = false
    override func viewDidLoad()
    {
        super.viewDidLoad()

//        calendarManager = JTCalendarManager
//        calendarManager.delegate = self
//
//        createMinAndMaxDate()
//
//        calendarManager.menuView = calendarMenuView
//        calendarManager.contentView = calendarContentView
//        let mydate = Date()
//        calendarManager.setDate(mydate)

    }


//    func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell {
//        <#code#>
//    }
//
//    func calendar(_ calendar: JTAppleCalendarView, willDisplay cell: JTAppleCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath) {
//        <#code#>
//    }
//
//    func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters {
//        <#code#>
//    }

//    func createMinAndMaxDate(){
//        todayDate = NSDate()
//        minDate = calendarManager.dateHelper.add(to: todayDate as Date!, months: -6) as NSDate
//        maxDate = calendarManager.dateHelper.add(to: todayDate as Date!, months: 6) as NSDate
//    }

}
