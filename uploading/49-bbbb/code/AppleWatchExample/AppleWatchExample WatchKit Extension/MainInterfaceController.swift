
//
//  InterfaceController.swift
//  AppleWatchExample WatchKit Extension
//
//  Created by Nguyen Duc Hoang on 9/23/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import WatchKit
import Foundation

enum MusicState {
    case playing
    case paused
}
class MainInterfaceController: WKInterfaceController {
    @IBOutlet var labelArtist: WKInterfaceLabel!
    @IBOutlet var labelSong: WKInterfaceLabel!
    
    @IBOutlet var buttonRewind: WKInterfaceButton!
    @IBOutlet var buttonPlay: WKInterfaceButton!
    @IBOutlet var buttonForward: WKInterfaceButton!
    @IBOutlet var sliderVolume: WKInterfaceSlider!
    
    var songState:MusicState = .paused
    var currentVolume:Float = 1.0
    //Action
    @IBAction func buttonRewind(sender: Any) {
        
    }
    @IBAction func buttonPlay(sender: Any) {
        songState = (songState == .paused) ? .playing : .paused
        let img = UIImage(named: "paused")
        buttonPlay.setBackgroundImage(songState == .playing ? UIImage(named: "play") : UIImage(named: "paused"))
    }
    @IBAction func buttonForward(sender: Any) {
        
    }
    @IBAction func sliderAction(value: Float) {
        currentVolume = value
        print("current volume = \(value)")
    }
    
    @IBAction
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        crownSequencer.focus()
        crownSequencer.delegate = self
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
extension MainInterfaceController: WKCrownDelegate {
    func crownDidRotate(_ crownSequencer: WKCrownSequencer?, rotationalDelta: Double) {
        print("Rotation delta = \(rotationalDelta)")
    }
}

