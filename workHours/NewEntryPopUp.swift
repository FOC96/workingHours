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
            self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        UIView.animate(withDuration: 0.1) {
            self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func checkHours(_ sender: Any) {
        
    }
    
    @objc func closePopUp() {
        dismiss(animated: true)
    }
    
}
