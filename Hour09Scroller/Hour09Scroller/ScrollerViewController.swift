//
//  ScrollerViewController.swift
//  Hour09Scroller
//
//  Created by Samuel A WINFUL on 4/11/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//

import UIKit

class ScrollerViewController: UIViewController {

  @IBOutlet weak var theScroller: UIScrollView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    theScroller.contentSize = CGSizeMake(500.0, 2000.0)
  }
}
