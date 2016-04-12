//
//  InitialViewController.swift
//  Hour12ToolbarsAndPickers
//
//  Created by Samuel A WINFUL on 2/22/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
  
  @IBOutlet weak var outputLabel: UILabel!
  
  
  func calculateDateDifference(choosenDate: NSDate) {
    
    let todaysDate = NSDate()
    let difference = todaysDate.timeIntervalSinceDate(choosenDate) / 86400
    
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "MMMM d, yyyy hh:mm:ssa"
    
    let todaysDateString  = dateFormatter.stringFromDate(todaysDate)
    let choosenDateString = dateFormatter.stringFromDate(choosenDate)
    
    let outputString = "Difference between choosen date (%@) and today (%@) in days: %1.2f"
    let differenceOutput = NSString(format: outputString, choosenDateString, todaysDateString, fabs(difference)) as String
    
    outputLabel.text = differenceOutput
  }
  
}
