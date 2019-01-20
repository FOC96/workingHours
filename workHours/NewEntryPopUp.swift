//
//  NewEntryPopUp.swift
//  workHours
//
//  Created by Fernando Ortiz Rico Celio on 10/22/18.
//  Copyright © 2018 Fernando Ortiz Rico Celio. All rights reserved.
//

import UIKit

class NewEntryPopUp: UIViewController {

    @IBOutlet weak var popUpView: MyViewDesign!
    @IBOutlet weak var clockInPicker: UIDatePicker!
    @IBOutlet weak var clockOutPicker: UIDatePicker!
    @IBOutlet weak var clockInPickerHeight: NSLayoutConstraint!
    @IBOutlet weak var clockOutPickerHeight: NSLayoutConstraint!
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let closingGesture = UISwipeGestureRecognizer(target: self, action: #selector(NewEntryPopUp.closePopUp))
        closingGesture.direction = .down
        popUpView.addGestureRecognizer(closingGesture)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        UIView.animate(withDuration: 0.8) {
            self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        UIView.animate(withDuration: 0.1) {
            self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        }
    }

   
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        closePopUp()
    }
    
    
    @IBAction func checkHours(_ sender: Any) {
        closePopUp()
    }
    
    @objc func closePopUp() {
        dismiss(animated: true)
    }
    
    @IBAction func toggleInPicker(_ sender: Any) {
        clockOutPicker.isHidden = true
        clockOutPickerHeight.constant = 0
        
        if clockInPicker.isHidden {
            clockInPicker.isHidden = false
            clockInPickerHeight.constant = 216
        } else {
            clockInPicker.isHidden = true
            clockInPickerHeight.constant = 0
        }
    }
    
    @IBAction func toggleOutPicker(_ sender: Any) {
        clockInPicker.isHidden = true
        clockInPickerHeight.constant = 0
        
        if clockOutPicker.isHidden {
            clockOutPicker.isHidden = false
            clockOutPickerHeight.constant = 216
        } else {
            clockOutPicker.isHidden = true
            clockOutPickerHeight.constant = 0
        }
    }
    
    
    
}
