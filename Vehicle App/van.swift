//
//  endDate.swift
//  Vehicle App
//
//  Created by Timothy P. Konopacki on 11/7/18.
//  Copyright © 2018 TK. All rights reserved.
//

import Foundation
import UIKit

class Van
{
    var availability:Bool
    var licensePlate:Int
    var checkoutUser:Int
    var dateIn:Int
    var dateOut:Int
    var timeIn:Int
    var timeOut:Int
    init(availability a:Bool, licensePlate lp:Int, checkoutuser cu:Int, dateIn di:Int, dateOut dt:Int, timeIn ti:Int, timeOut to:Int) {
    availability = a
    licensePlate = lp
    checkoutUser = cu
    dateIn = di
    dateOut = dt
    timeIn = ti
    timeOut = to
    }
}
