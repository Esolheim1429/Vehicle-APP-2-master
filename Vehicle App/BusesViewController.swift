//
//  BusesViewController.swift
//  Vehicle App
//
//  Created by Timothy P. Konopacki on 11/15/18.
//  Copyright © 2018 TK. All rights reserved.
//

import UIKit

class BusesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
var busesArray = [Bus]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
print(busesArray)
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return busesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "busesCell", for: indexPath)
        cell.textLabel?.text = "Bus with License Plate" + busesArray[indexPath.row].licensePlate
        
        //        cell.textLabel?.text? = stop["name"] as! String
        //        cell.detailTextLabel?.text? = stop["location"] as! String
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
