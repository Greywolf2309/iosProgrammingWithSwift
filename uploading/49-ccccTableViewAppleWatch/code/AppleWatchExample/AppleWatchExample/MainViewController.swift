//
//  ViewController.swift
//  AppleWatchExample
//
//  Created by Nguyen Duc Hoang on 9/23/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var txtTaskName: UITextField!
    @IBOutlet weak var txtDatePicker: UITextField!
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showDatePicker()
    }
    func showDatePicker(){
        //Formate Date
        datePicker.datePickerMode = .time
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));
        //ToolBar
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        toolbar.setItems([doneButton,spaceButton,cancelButton], animated: false)
        
        txtDatePicker.inputAccessoryView = toolbar
        txtDatePicker.inputView = datePicker
    }
    @IBAction func btnShareData(sender: UIButton) {
        WatchManager.shared.sendParamsToWatch(dict: [
            "taskName": txtDatePicker.text ?? "",
            "finishedTime": txtTaskName.text ?? ""
            ])
    }
    @objc func donedatePicker(){
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:MM"
        txtDatePicker.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func cancelDatePicker(){
        self.view.endEditing(true)
    }
    @objc func datePickerValueChanged(sender:UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.medium
        
        dateFormatter.timeStyle = DateFormatter.Style.none
        
        txtDatePicker.text = dateFormatter.string(from: sender.date)
        
    }

}

