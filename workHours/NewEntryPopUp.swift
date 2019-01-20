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
    @IBOutlet weak var clockInButton: insideButtonDesign!
    @IBOutlet weak var clockOutButton: insideButtonDesign!
    @IBOutlet weak var totalHours: insideButtonDesign!
    
    var start : Date = Date.init()
    var end : Date = Date.init()
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let closingGesture = UISwipeGestureRecognizer(target: self, action: #selector(NewEntryPopUp.closePopUp))
        closingGesture.direction = .down
        popUpView.addGestureRecognizer(closingGesture)
        // Do any additional setup after loading the view.
        clockInPicker.setValue(UIColor.white, forKeyPath: "textColor")
        clockOutPicker.setValue(UIColor.white, forKeyPath: "textColor")
        clockInPicker.maximumDate = Date()
        clockOutPicker.maximumDate = Date()
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
        clockOutButton.setImage(UIImage(named: "chevronDown"), for: .normal)
        
        if clockInPicker.isHidden {
            clockInPicker.isHidden = false
            clockInPickerHeight.constant = 216
            clockInButton.setImage(UIImage(named: "chevronUp"), for: .normal)
        } else {
            clockInPicker.isHidden = true
            clockInPickerHeight.constant = 0
            clockInButton.setImage(UIImage(named: "chevronDown"), for: .normal)
        }
    }
    
    @IBAction func toggleOutPicker(_ sender: Any) {
        clockInPicker.isHidden = true
        clockInPickerHeight.constant = 0
        clockInButton.setImage(UIImage(named: "chevronDown"), for: .normal)
        
        if clockOutPicker.isHidden {
            clockOutPicker.isHidden = false
            clockOutPickerHeight.constant = 216
            clockOutButton.setImage(UIImage(named: "chevronUp"), for: .normal)
        } else {
            clockOutPicker.isHidden = true
            clockOutPickerHeight.constant = 0
            clockOutButton.setImage(UIImage(named: "chevronDown"), for: .normal)
        }
    }
    

    @IBAction func clockInChanged(_ sender: Any) {
        start = clockInPicker.date
        updateDisplayedHours()
    }
    
    @IBAction func clockOutChanged(_ sender: Any) {
        end = clockOutPicker.date
        updateDisplayedHours()
    }
    
    func updateDisplayedHours() {
        if clockInPicker.date < clockOutPicker.date {
            let diff = end.timeIntervalSince(start)
            var hours = Double((Double(diff)/3600))
            hours = Double(String(format: "%.1f", hours)) ?? 0
            
            totalHours.setTitle("\(hours) Hours", for: .normal)
        } else {
            totalHours.setTitle("", for: .normal)
        }
    }
    
    
}
