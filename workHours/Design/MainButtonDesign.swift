//
//  MainButtonDesign.swift
//  workHours
//
//  Created by Fernando Ortiz Rico Celio on 10/20/18.
//  Copyright © 2018 Fernando Ortiz Rico Celio. All rights reserved.
//

import UIKit

@IBDesignable
class MainButtonDesign: UIButton {

    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 12
        self.layer.backgroundColor = UIColor(red: 0.039, green: 0.651, blue: 0.514, alpha: 1).cgColor
        self.titleLabel?.textColor = UIColor.black
        self.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
