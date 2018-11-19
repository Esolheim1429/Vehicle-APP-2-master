//
//  startDate.swift
//  Vehicle App
//
//  Created by Timothy P. Konopacki on 11/7/18.
//  Copyright © 2018 TK. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase

class Bus
{
    var availability:Bool
    var licensePlate:String
    var checkoutUser:String
    var dateIn:String
    var dateOut:String
    var timeIn:String
    var timeOut:String
    init(availability a:Bool, licensePlate lp:String, checkoutUser cu:String, dateIn di:String, dateOut dt:String, timeIn ti:String, timeOut to:String) {
        availability = a
        licensePlate = lp
        checkoutUser = cu
        dateIn = di
        dateOut = dt
        timeIn = ti
        timeOut = to
}
    
}
