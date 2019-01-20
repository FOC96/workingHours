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
        self.layer.backgroundColor = UIColor(red: 0.149, green: 0.149, blue: 0.149, alpha: 1).cgColor
    }
}

@IBDesignable
class MainButtonDesign: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 12
        self.layer.backgroundColor = UIColor(red: 0.039, green: 0.651, blue: 0.514, alpha: 1).cgColor
        self.titleLabel?.textColor = UIColor.black
        self.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
    }
}


@IBDesignable
class insideButtonDesign: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 15
        self.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha:0.08).cgColor
        self.titleLabel?.textColor = UIColor.white
        self.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        self.titleLabel?.textAlignment = .left
        if imageView != nil {
            imageEdgeInsets = UIEdgeInsets(top: 5, left: (bounds.width - 35), bottom: 5, right: 5)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: (imageView?.frame.width)!)
        }
    }
}
