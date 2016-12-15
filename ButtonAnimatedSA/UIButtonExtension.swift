//
//  UIButtonExtension.swift
//  ButtonAnimatedSA
//
//  Created by DA SILVA Andre Henrique on 15/12/2016.
//  Copyright © 2016 a h e n q s. All rights reserved.
//

import UIKit

extension UIButton {
    
    func animate() {
        
        //removes hightlight effect on first button
        self.adjustsImageWhenHighlighted = false
        
        UIView.animate(withDuration: 0.2, animations: {
            
            //increases button size in 50%
            self.transform = CGAffineTransform.init(scaleX: 1.5, y: 1.5)
            
        }, completion: { success in
            
            UIView.animate(withDuration: 0.4, animations: {
                //button size back to normal
                self.transform = CGAffineTransform.identity
            })
            
        })
        
    }
    
}
