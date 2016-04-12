//
//  ViewController.swift
//  Hour09FlowerWeb
//
//  Created by Samuel A WINFUL on 3/22/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//

import UIKit

class FlowerViewController: UIViewController {
  
  @IBOutlet weak var colorChoice: UISegmentedControl!
  @IBOutlet weak var flowerView: UIWebView!
  @IBOutlet weak var flowerDetailView: UIWebView!
  @IBAction func toggleFlowerDetail(sender: UISwitch) {
    flowerDetailView.hidden = !sender.on
    // blurView.hidden = !sender.on
  }
  
  // @IBOutlet weak var blurView: UIVisualEffectView!
  
  @IBAction func getFlower(sender: UIButton?) {
    let sessionID = random()%50000
    let color = colorChoice.titleForSegmentAtIndex(colorChoice.selectedSegmentIndex)!
    let imageURLString  = "https://teachyourselfios.info/?hour=9&color=\(color)&session=\(sessionID)"
    let detailURLString = "https://teachyourselfios.info/?hour=9&session=\(sessionID)&type=detail"
    let imageURL = NSURL(string: imageURLString)
    let detailURL = NSURL(string: detailURLString)
    
    flowerView.loadRequest(NSURLRequest(URL: imageURL!))
    flowerDetailView.loadRequest(NSURLRequest(URL: detailURL!))
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    flowerDetailView.hidden = true
    getFlower(nil)
    
    // blurView.hidden = true
    
  }

}

