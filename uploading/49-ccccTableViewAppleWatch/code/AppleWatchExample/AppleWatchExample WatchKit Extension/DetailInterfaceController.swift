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
    @IBAction func buttonDelele(sender: Any) {
        
    }
}
