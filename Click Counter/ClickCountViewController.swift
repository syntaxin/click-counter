//
//  ClickCountViewController.swift
//  Click Counter
//
//  Created by Enrico Montana on 4/12/15.
//  Copyright (c) 2015 Enrico Montana. All rights reserved.
//

import UIKit

class ClickCountViewController: UIViewController {

    var count = 0
    var clickLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var clickLabel = UILabel()
        clickLabel.frame = CGRectMake(150,150,60,60)
        clickLabel.text = "0"
        
        self.view.addSubview(clickLabel)
        self.clickLabel = clickLabel
        
        //Button for the user to click
        
        var clickButton = UIButton()
        clickButton.frame = CGRectMake(150,250,60,60)
        clickButton.setTitle("Click", forState: .Normal)
        clickButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(clickButton)
        
        clickButton.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    
    }
    
    func incrementCount(){
        self.count++
        self.clickLabel.text = "\(self.count)"
    }
    
    
}

