//
//  ViewController.swift
//  ButtonAnimatedSA
//
//  Created by DA SILVA Andre Henrique on 15/12/2016.
//  Copyright © 2016 a h e n q s. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: StatusButton!
    @IBOutlet weak var statusButton: StatusButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {

        //changes standard color for status button
        statusButton.onColor = UIColor(red: 245.0/255.0, green: 65.0/255.0, blue: 104.0/255.0, alpha: 1.0)
        statusButton.offColor = UIColor.lightGray
    }

    @IBAction func buttonTapped(_ sender: StatusButton) {
        
        sender.changeStatus()
        
        //should do some stuff here
    }
    
    @IBAction func statusTapped(_ sender: StatusButton) {
        
        statusButton.changeStatus()

        //should do some stuff here
    }
}

