//
//  DetailInterfaceController.swift
//  AppleWatchExample WatchKit Extension
//
//  Created by Nguyen Duc Hoang on 9/24/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import Foundation
import WatchKit

class DetailInterfaceController: WKInterfaceController {
    @IBOutlet weak var labelTaskName: WKInterfaceLabel!
    @IBOutlet weak var labelFinishedTime: WKInterfaceLabel!
    @IBOutlet weak var imageViewTask: WKInterfaceImage!
    var mainController: MainInterfaceController?
    @IBAction func buttonDelele(sender: Any) {
        let okAction = WKAlertAction(title: "Delete", style: .destructive) {
            self.mainController?.tasks.remove(at: self.mainController?.selectedRow ?? -1)
        }
        let cancelAction = WKAlertAction(title: "Cancel", style: .default) {
            
        }
        presentAlert(withTitle: "Warning",
                     message: "Are you sure you want to delete this ?",
                     preferredStyle: .alert, actions: [okAction, cancelAction])
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
        mainController = context as? MainInterfaceController
        
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
