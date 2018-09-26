//
//  DetailInterfaceController.swift
//  WatchAppExample WatchKit Extension
//
//  Created by Nguyen Duc Hoang on 9/25/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import WatchKit
import Foundation


class DetailInterfaceController: WKInterfaceController {
    @IBOutlet weak var labelTaskName: WKInterfaceLabel!
    @IBOutlet weak var labelFinishedTime: WKInterfaceLabel!
    @IBOutlet weak var imageViewTask: WKInterfaceImage!
    var interfaceController:InterfaceController?
    @IBAction func buttonDelele(sender: Any) {
        
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        interfaceController = context as? InterfaceController
        if let selectedTask:Task? = interfaceController?.tasks[interfaceController?.selectedRow ?? 0] {
            labelTaskName.setText(selectedTask?.taskName)
            labelFinishedTime.setText(selectedTask?.finishedTime)
            imageViewTask.setTintColor(selectedTask?.color)
            imageViewTask.setImageNamed(selectedTask?.iconName)
            labelTaskName.setTextColor(selectedTask?.color)
            labelFinishedTime.setTextColor(selectedTask?.color)
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
