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
    var clickDogLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //human click label
        var clickLabel = UILabel()
        clickLabel.frame = CGRectMake(150,150,60,60)
        clickLabel.text = "Human"
        
        self.view.addSubview(clickLabel)
        self.clickLabel = clickLabel
        
        //dog click label
        var clickDogLabel = UILabel()
        clickDogLabel.frame = CGRectMake(150,200,60,60)
        clickDogLabel.text = "Dog"
        
        self.view.addSubview(clickDogLabel)
        self.clickDogLabel = clickDogLabel
        
        
        //Button for the user to click and increment labels
        
        var clickUpButton = UIButton()
        clickUpButton.frame = CGRectMake(150,250,60,60)
        clickUpButton.setTitle("Click +", forState: .Normal)
        clickUpButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(clickUpButton)
        
        clickUpButton.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    
        //Button for the user to click and decrement labels
        
        var clickDownButton = UIButton()
        clickDownButton.frame = CGRectMake(150,350,60,60)
        clickDownButton.setTitle("Click -", forState: .Normal)
        clickDownButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(clickDownButton)

        clickDownButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)

        
    }
    
    //incrementer
    func incrementCount(){
        self.count++
        labelCounter()
    }
    
    //decrementer
    func decrementCount(){
        
        self.count--
        labelCounter()
        
    }
    
    //labelcreator
    func labelCounter(){
        
        self.clickLabel.text = "\(self.count)"
        self.clickDogLabel.text = "\(self.count * 7)"
        
    }
    
    
}

