//
//  MainViewController.swift
//  WatchAppExample
//
//  Created by Nguyen Duc Hoang on 9/25/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var txtTaskName: UITextField!
    @IBOutlet weak var txtDatePicker: UITextField!
    let datePicker = UIDatePicker()
    @IBAction func btnShareData(sender: UIButton) {
        WatchManager.shared.sendParamsToWatch(dict: [
            "taskName": txtTaskName.text ?? "",
            "finishedTime": txtDatePicker.text ?? ""
        ])
    }
    private func showDatePicker() {
        datePicker.datePickerMode = .time
        txtDatePicker.inputView = datePicker
        datePicker.addTarget(self, action: #selector(datePickerValueChanged), for: .valueChanged)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        showDatePicker()
        // Do any additional setup after loading the view.
    }
    @objc func datePickerValueChanged(sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:MM"
        txtDatePicker.text = dateFormatter.string(from: sender.date)
    }
}
