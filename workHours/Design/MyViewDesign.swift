//
//  MyViewDesign.swift
//  workHours
//
//  Created by Fernando Ortiz Rico Celio on 10/20/18.
//  Copyright © 2018 Fernando Ortiz Rico Celio. All rights reserved.
//

import UIKit

@IBDesignable
class MyViewDesign: UIView {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 15
        self.layer.backgroundColor = UIColor(red: 0.141, green: 0.141, blue: 0.141, alpha:1).cgColor
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
