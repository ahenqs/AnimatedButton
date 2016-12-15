//
//  ViewController.swift
//  ButtonAnimatedSA
//
//  Created by DA SILVA Andre Henrique on 15/12/2016.
//  Copyright © 2016 a h e n q s. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        
        //changes image tint color for button 2
        let image = UIImage(named: "Settings")
        let tintedImage = image?.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
        button.setImage(tintedImage, for: .normal)
        button.tintColor = UIColor.orange
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        sender.animate()
        
        //should do some stuff here
    }
}

