//
//  ViewController.swift
//  Hour12CustomDatePicker
//
//  Created by Samuel A WINFUL on 2/24/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var outputLabel: UILabel!
  
  func displayAnimal(chosenAnimal: String, withSound chosenSound: String, fromComponent chosenComponent: String) {
    outputLabel.text = "You cfanged \(chosenComponent) (\(chosenAnimal) and the sound \(chosenSound))"
  }
  
}

