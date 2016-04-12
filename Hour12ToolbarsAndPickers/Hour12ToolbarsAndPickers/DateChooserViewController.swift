//
//  DateChooserViewController.swift
//  Hour12ToolbarsAndPickers
//
//  Created by Samuel A WINFUL on 2/21/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//

import UIKit

class DateChooserViewController: UIViewController {
  
  /// allow the user to set the date and time
  @IBAction func setDateTime(sender: UIDatePicker) {
    
    (presentingViewController as! InitialViewController).calculateDateDifference(sender.date)
  }
  
  /// Dismisses the date chooser scene
  @IBAction func dismissDateChooser(sender: UIButton) {
    dismissViewControllerAnimated(true, completion: nil)
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    (presentingViewController as! InitialViewController).calculateDateDifference(NSDate())
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    preferredContentSize = CGSizeMake(340,380)
  }
  
  
  
}
