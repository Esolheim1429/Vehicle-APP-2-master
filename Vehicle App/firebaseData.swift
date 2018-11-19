//
//  firebaseData.swift
//  Vehicle App
//
//  Created by Timothy P. Konopacki on 11/13/18.
//  Copyright © 2018 TK. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase
import Firebase
var buses: [Bus] = []
class dataPull{
//    var dpRef : DatabaseReference!
    var busesRef : DatabaseReference!
    
    init(){
//    self.dpRef = Database.database().reference()
    self.busesRef = Database.database().reference()
    self.busesRef.child("Buses")
    getBuses()
        //put the get buses func here
    }
//    func insertBus(Availability: Bool, LicensePlate: String, dateIn: Int, dateOut: Int, timeIn: Int, timeOut: Int){
//    let key = self.busesRef.childByAutoId().key
//        let indBus = buses(Availability: true, LicensePlate: 12345, checkoutUser: "bob", dateIn: "11.18.2018", dateOut: "11.18.2018", timeIn: 12, timeOut: 13)
//        self.busesRef.updateChildValues(indBus)
//
//    }
    func getBuses(){
        self.busesRef.observe(.childAdded){
            (snapshot : DataSnapshot) in
            let aval = snapshot.value(forKey: "Availability") as! Bool
            let lp = snapshot.value(forKey: "LicensePlate") as! String
            let returnDate = snapshot.value(forKey: "dateIn") as! String
            let checkoutDate = snapshot.value(forKey: "dateOut") as! String
            let checkoutTime = snapshot.value(forKey: "timeOut") as! String
            let returnTime = snapshot.value(forKey: "timeIn") as! String
            let checkoutUser = snapshot.value(forKey: "checkoutUser") as! String
            //buses.append(aval)
            let indBus = Bus(availability: aval, licensePlate: lp, checkoutUser: checkoutUser, dateIn: returnDate, dateOut: checkoutDate, timeIn: returnTime, timeOut: checkoutTime)
            buses.append(indBus)
            //print(aval, lp, returnDate, checkoutDate, checkoutTime, returnTime)
        }
    }
}
