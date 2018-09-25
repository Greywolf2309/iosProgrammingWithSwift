//
//  TaskRowController.swift
//  WatchAppExample WatchKit Extension
//
//  Created by Nguyen Duc Hoang on 9/25/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit
import WatchKit

class TaskRowController: NSObject {
    @IBOutlet weak var labelTaskName: WKInterfaceLabel!
    @IBOutlet weak var labelFinishedTime: WKInterfaceLabel!
    @IBOutlet weak var imageViewTask: WKInterfaceImage!
    var task: Task? {
        didSet {
            labelTaskName.setText(task?.taskName)
            labelFinishedTime.setText(task?.finishedTime)
            imageViewTask.setTintColor(task?.color)
            imageViewTask.setImageNamed(task?.iconName)
            labelTaskName.setTextColor(task?.color)
            labelFinishedTime.setTextColor(task?.color)
        }
    }
}
