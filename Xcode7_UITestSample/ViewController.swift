//
//  ViewController.swift
//  Xcode7_UITestSample
//
//  Created by Kenzo on 2015/07/01.
//  Copyright © 2015年 Karuta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countBtn: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var resetBtn: UIButton!
    
    var tappedCount : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayCount()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func countBtnTapped(sender: AnyObject) {
        tappedCount++
        displayCount()
    }
    
    @IBAction func resetBtnTapped(sender: AnyObject) {
        tappedCount = 0
        displayCount()
    }
    
    func displayCount() {
        countLabel.text = String(tappedCount)
    }

}

