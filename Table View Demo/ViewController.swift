//
//  ViewController.swift
//  Table View Demo
//
//  Created by Aashirwad Sinha on 11/7/19.
//  Copyright © 2019 Credit Suisse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let dailyTasks = ["Check all windows",
                      "Check all doors",
                      "Check the mailbox",
                      "Empty trash container",
                      "If freezing, check water pipes",
                      "Document \"strange and unusual \" occurrences"]
    
    let weeklyTasks = ["Check inside all cabins",
                       "Walk the perimeter of property"]
    
    let monthlyTasks = ["Test Security alarm",
                        "Check bank account for balance",
                        "Test smoke alarams",
                        "Pay electricity bill"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Monthly Tasks"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return monthlyTasks.count
        default:
            return 0
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
        cell.imageView?.image = UIImage(named: "star")
        cell.accessoryType = .disclosureIndicator
        cell.detailTextLabel?.text = "This is some detail text.."
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = dailyTasks[indexPath.row]
        case 1:
            cell.textLabel?.text = weeklyTasks[indexPath.row]
        case 2:
            cell.textLabel?.text = monthlyTasks[indexPath.row]
        default:
            cell.textLabel?.text = "This shouldn't happen"
        }
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

