//
//  Task.swift
//  AppleWatchExample WatchKit Extension
//
//  Created by Nguyen Duc Hoang on 9/24/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import WatchKit
class Task {
    var taskName: String?
	var finishedTime: String?
	var iconName: String?
	var color: UIColor?
    
    init(taskName: String, finishedTime: String, iconName: String, color: UIColor) {
        self.taskName = taskName
		self.finishedTime = finishedTime
		self.iconName = iconName
		self.color = color
    }
}
