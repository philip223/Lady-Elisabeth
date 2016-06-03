//
//  ViewController.swift
//  School app
//
//  Created by philip mackie on 3/17/15.
//  Copyright (c) 2015 vilet studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var didSelect: UILabel!
    
    // set array for selection
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    let moodArray = ["Headmaster", "School Secretary Sr", "School Secretary Jr", "Head of Admissions", "Head of Pastoral Care", "Director of Studies","Head of 6th Form"]
    
    // set rows
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moodArray.count
    }
    
    // implement data
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return moodArray[row]
    }
    
    // set selection, replace didSelect Label
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch row {
        case 0:
            didSelect.text = "r.wijeratne@laudeladyelizabeth.com"
        case 1:
            didSelect.text = " n.smolders@laudeladyelizabeth.com"
        case 2:
            didSelect.text = "junior@laudeladyelizabeth.com"
        case 3:
            didSelect.text = "p.ivars@laudeladyelizabeth.com"
        case 4:
            didSelect.text = "e.shapiro@laudeladyelizabeth.com"
        case 5:
            didSelect.text = "a.castle@laudeladyelizabeth.com"
        case 6:
            didSelect.text = " m.wickman@laudeladyelizabeth.com"
        default:
            didSelect.text = "No selection"
        }
        
        
        
        if didSelect.text == "r.wijeratne@laudeladyelizabeth.com" {
            button.hidden = false
        }else{
            button.hidden = true
        }
        
        if didSelect.text == " n.smolders@laudeladyelizabeth.com" {
            button1.hidden = false
        }else{
            button1.hidden = true
        }
        
        
        if didSelect.text == "junior@laudeladyelizabeth.com" {
            button2.hidden = false
        }else{
            button2.hidden = true
        }
        
        
        if didSelect.text == "p.ivars@laudeladyelizabeth.com" {
            button3.hidden = false
        }else{
            button3.hidden = true
        }
        
        if didSelect.text == "e.shapiro@laudeladyelizabeth.com" {
            button4.hidden = false
        }else{
            button4.hidden = true
        }
        
        if didSelect.text == "a.castle@laudeladyelizabeth.com" {
            button5.hidden = false
        }else{
            button5.hidden = true
        }
        
        
        if didSelect.text == " m.wickman@laudeladyelizabeth.com" {
            button6.hidden = false
        }else{
            button6.hidden = true
        }
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
}
  