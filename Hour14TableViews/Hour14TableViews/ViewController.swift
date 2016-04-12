//
//  ViewController.swift
//  Hour14TableViews
//
//  Created by Samuel A WINFUL on 2/21/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
  
  let lunchMenu = [
    "Ceaser Salad",
    "Sticky Rice",
    "Chicken Clam Chowder",
    "Tour of Italy",
    "Burger & Fries",
    "Rice Balls & Peanut Butter Soup",
    "Chicken Over Rice",
    "Chicken Over Rice",
    "Chicken Over Rice",
    "Chicken Over Rice",
    "Chicken Over Rice",
    "Chicken Over Rice",
    "Chicken Over Rice",
    "Chicken Over Rice",
    "Chicken Over Rice",
    "Chicken Over Rice",
    "Chicken Over Rice",
    "Chicken Over Rice",
  ]
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return lunchMenu.count
  }
  
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return "Lunch Menu"
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell")! as UITableViewCell
    
    if indexPath.section == 0  {
      for (index, value) in lunchMenu.enumerate() {
        if indexPath.row == index {
          cell.textLabel!.text = value
        }
      }
    }
    return cell
  }

}

