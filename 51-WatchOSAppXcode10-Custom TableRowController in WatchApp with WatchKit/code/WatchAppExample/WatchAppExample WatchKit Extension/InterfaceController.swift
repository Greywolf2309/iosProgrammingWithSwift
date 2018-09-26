//
//  InterfaceController.swift
//  WatchAppExample WatchKit Extension
//
//  Created by Nguyen Duc Hoang on 9/25/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var table: WKInterfaceTable!
    var tasks: [Task] = [
        Task(taskName: "Drink coffee",
             finishedTime: "07:30",
             iconName: "coffee",
             color: UIColor(r: 237, g: 135, b: 63)),
        Task(taskName: "Play pingpong",
             finishedTime: "18:00",
             iconName: "pingpong",
             color: UIColor(r: 238, g: 250, b: 108)),
        Task(taskName: "Go to sleep",
             finishedTime: "22:46",
             iconName: "sleep",
             color: UIColor(r: 130, g: 248, b: 180)),
        Task(taskName: "Play tennis",
             finishedTime: "18:46",
             iconName: "tennis",
             color: UIColor(r: 212, g: 55, b: 106)),
        Task(taskName: "Wake up",
             finishedTime: "06:00",
             iconName: "wakeup",
             color: UIColor.yellow),
        Task(taskName: "Go to work",
             finishedTime: "08:00",
             iconName: "work",
             color: UIColor.cyan)
        
    ]
    private func configureTable() {
        table.setNumberOfRows(tasks.count, withRowType: "TaskRowController")
        for i in 0..<table.numberOfRows {
            let row: TaskRowController = table.rowController(at: i) as! TaskRowController
            let task:Task = tasks[i]
            row.task = task
        }
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        configureTable()
        
        // Configure interface objects here.
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
