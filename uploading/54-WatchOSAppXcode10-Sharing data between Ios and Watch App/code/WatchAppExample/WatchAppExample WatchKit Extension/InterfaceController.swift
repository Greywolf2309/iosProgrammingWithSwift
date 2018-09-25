//
//  InterfaceController.swift
//  WatchAppExample WatchKit Extension
//
//  Created by Nguyen Duc Hoang on 9/25/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity

class InterfaceController: WKInterfaceController {
    @IBOutlet weak var table: WKInterfaceTable!
    var watchSession: WCSession?
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
    var selectedRow: Int?
    func configureTable() {
        table.setNumberOfRows(tasks.count, withRowType: "TaskRowController")
        for i in 0..<table.numberOfRows {
            let row: TaskRowController = table.rowController(at: i) as! TaskRowController
            let task:Task = tasks[i]
            row.task = task
        }
    }
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        selectedRow = rowIndex
        presentController(withName: "DetailInterfaceController", context: self)
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        configureTable()
        watchSession = WCSession.default
        watchSession?.delegate = self
        watchSession?.activate()
        
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
extension InterfaceController: WCSessionDelegate {
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        print("Session activation did complete")
    }
    func session(_ session: WCSession, didReceiveApplicationContext applicationContext: [String : Any]) {
        print("watch received app context: ", applicationContext)
        let newTask = Task(taskName: applicationContext["taskName"] as! String,
                           finishedTime: applicationContext["finishedTime"] as! String,
                           iconName: "work",
                           color: UIColor.cyan)
        tasks.append(newTask)
        configureTable()
    }
}
