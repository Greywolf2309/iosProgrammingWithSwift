//
//  MainInterfaceController.swift
//  AppleWatchExample WatchKit Extension
//
//  Created by Nguyen Duc Hoang on 9/25/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import Foundation
import WatchKit

class MainInterfaceController: WKInterfaceController {
    @IBOutlet weak var buttonRewind: WKInterfaceButton!
    @IBOutlet var buttonPlay: WKInterfaceButton!
    @IBOutlet var buttonForward: WKInterfaceButton!
    @IBOutlet var sliderVolume: WKInterfaceSlider!
    var currentVolume:Float = 1.0
    
    //Actions
    @IBAction func buttonRewind(sender: WKInterfaceButton) {
        print("press Rewind")
    }
    @IBAction func buttonPlay(sender: WKInterfaceButton) {
        print("press Play")
    }
    @IBAction func buttonForward(sender: WKInterfaceButton) {
        print("press Forward")
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }
    @IBAction func sliderAction(value: Float) {
        currentVolume = value
        print("current volume = \(value)")
    }
    override func willActivate() {
        super.willActivate()
    }
}
