//
//  AnimalChooserViewController.swift
//  Hour12CustomPicker
//
//  Created by Samuel A WINFUL on 2/24/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//

import UIKit

class AnimalChooserViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
  
  // let initialView2 = presentingViewController as! ViewController

  var animalNames  = [String]()
  var animalSounds = [String]()
  var animalImages = [UIImageView]()
  
  @IBAction func dismissAnimalChooser(sender: UIBarButtonItem) {
    dismissViewControllerAnimated(true, completion: nil)
  }
  
  // MARK: Protocols Implementations
  
  func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
    return 55.0
  }
  
  func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
    if component == Constants.animalComponent {
      return 75.0
    } else {
      return 150.0
    }
  }
  
  func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    let initialView = presentingViewController as! ViewController
    
    if component == Constants.animalComponent {
      let chosenSound = pickerView.selectedRowInComponent(Constants.soundComponent)
      initialView.displayAnimal(animalNames[row], withSound: animalSounds[chosenSound], fromComponent: "the Animal")
    } else {
      let chosenAnimal = pickerView.selectedRowInComponent(Constants.animalComponent)
      initialView.displayAnimal(animalNames[chosenAnimal], withSound: animalSounds[row], fromComponent: "the Sound")
    }
  }
  
  func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
    if component == Constants.animalComponent {
      let chosenImageView = animalImages[row]
      let workAroundImage  = UIImageView(frame: chosenImageView.frame)
      workAroundImage.backgroundColor = UIColor(patternImage: chosenImageView.image!)
      return workAroundImage
    } else {
      let soundLabel = UILabel(frame: CGRectMake(0,0,100,32))
      soundLabel.backgroundColor = UIColor.clearColor()
      soundLabel.text = animalSounds[row]
      return soundLabel
    }
  }
  func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    if component == Constants.animalComponent {
      return animalNames.count
    } else {
      return animalSounds.count
    }
  }
  
  func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    return Constants.componentCount
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    let initialView = presentingViewController as! ViewController
    initialView.displayAnimal(animalNames[0], withSound: animalSounds[0], fromComponent: "nothing yet...")
  }
  
  override func viewDidLoad() {
    animalNames  = ["Mouse", "Goose", "Cat", "Dog", "Snake", "Bear", "Pig"]
    animalSounds = ["Oink", "Rawr", "Ssss", "Roof", "Meow", "Honk", "Squeak"]
    
    animalImages = [
      UIImageView(image: UIImage(named: "mouse.png")),
      UIImageView(image: UIImage(named: "goose.png")),
      UIImageView(image: UIImage(named: "cat.png")),
      UIImageView(image: UIImage(named: "dog.png")),
      UIImageView(image: UIImage(named: "snake.png")),
      UIImageView(image: UIImage(named: "bear.png")),
      UIImageView(image: UIImage(named: "pig.png")),
    ]
    
    preferredContentSize = CGSizeMake(340, 380)
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewDidAppear(animated)
    
    if (popoverPresentationController?.arrowDirection != UIPopoverArrowDirection.Unknown) {
      // This view controller is running in popover
      NSLog("I'm running in a Popover!")
    }
  }
  
}
