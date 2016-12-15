//
//  StatusButton.swift
//  ButtonAnimatedSA
//
//  Created by DA SILVA Andre Henrique on 15/12/2016.
//  Copyright © 2016 a h e n q s. All rights reserved.
//

import UIKit

@IBDesignable
class StatusButton: UIButton {
    
    var isOn: Bool = false
    var image: UIImage!
    
    //standard colors
    var onColor: UIColor = UIColor.orange
    var offColor: UIColor = UIColor.lightGray
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        applyCustomFormat()
    }
    
    convenience init(image: UIImage) {
        self.init(frame: CGRect.zero)
        
        self.image = image.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
        self.setImage(self.image, for: .normal)
        self.tintColor = UIColor.lightGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        applyCustomFormat()
    }

    override func prepareForInterfaceBuilder() {
        
        applyCustomFormat()
    }
    
    func applyCustomFormat() {
        
        let image = self.image(for: .normal)
        let tintedImage = image?.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
        self.setImage(tintedImage, for: .normal)
        self.tintColor = UIColor.lightGray
    }
    
    func changeStatus() {
        
        isOn = !isOn
        
        if isOn {
            //pink color
            self.tintColor = onColor
            
        } else {

            self.tintColor = offColor
        }
        
        animate()
    }
}
