//
//  ViewController.swift
//  Vehicle App
//
//  Created by Timothy P. Konopacki on 10/31/18.
//  Copyright © 2018 TK. All rights reserved.
//

import UIKit
import GoogleSignIn
class ViewController: UIViewController, GIDSignInUIDelegate{

    var signedIn = false
    var vans = false
    var cars = false
    let googleButton = GIDSignInButton()
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var counter = 0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     setupGoogleButton()
        signedIn = appDelegate.signedIn
        print("test")
        print("test2")
        timer = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(hideGoogleSignIn), userInfo: nil, repeats: true)


    }
    
   
    fileprivate func setupGoogleButton(){
        googleButton.frame = CGRect(x: 16, y: 500, width: view.frame.width - 32 , height: 50)
        view.addSubview(googleButton)
        GIDSignIn.sharedInstance()?.uiDelegate = self
        //hideGoogleSignIn()
    }
    
    @objc func timerAction() {
        counter += 1
    }
    
    @objc func hideGoogleSignIn(){
        self.signedIn = self.appDelegate.signedIn
            if self.signedIn == false{
            self.googleButton.isHidden = false
        }else{
            if self.signedIn == true{
                self.googleButton.isHidden = true
            }
        }
    
    }
    
    @IBAction func vanChosen(_ sender: UIButton) {
        vans = true
        cars = false
        performSegue(withIdentifier: "calendarSegue", sender: nil)
    }
    
    @IBAction func carChosen(_ sender: UIButton) {
        cars = true
        vans = false
        //performSegue(withIdentifier: "calendarSegue", sender: nil)
    }

    @IBAction func bothChosen(_ sender: UIButton) {
        cars = true
        vans = true
        performSegue(withIdentifier: "calendarSegue", sender: nil)
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        //let nvc = segue.destination as? CalendarViewController
//        nvc?.cars = cars
//        nvc?.vans = vans
//    }

}

