//
//  ViewController.swift
//  Hour10UsersAttention
//
//  Created by Samuel A WINFUL on 3/8/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let alertController = UIAlertController(title: "Email Address", message: "Please enter your email address:", preferredStyle: UIAlertControllerStyle.Alert)
  
  
  let defaultAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
  let destructiveAction = UIAlertAction(title: "Erase My Device", style: UIAlertActionStyle.Destructive, handler: nil)
  
}

