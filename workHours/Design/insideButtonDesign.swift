//
//  insideButtonDesign.swift
//  workHours
//
//  Created by Fernando Ortiz Rico Celio on 10/21/18.
//  Copyright © 2018 Fernando Ortiz Rico Celio. All rights reserved.
//

import UIKit

@IBDesignable
class insideButtonDesign: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 15
        self.layer.backgroundColor = UIColor(red: 0.141, green: 0.141, blue: 0.141, alpha:0.3).cgColor
        self.titleLabel?.textColor = UIColor.white
        self.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        self.titleLabel?.textAlignment = .left
        if imageView != nil {
            imageEdgeInsets = UIEdgeInsets(top: 5, left: (bounds.width - 35), bottom: 5, right: 5)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: (imageView?.frame.width)!)
        } 
    }
    

}
