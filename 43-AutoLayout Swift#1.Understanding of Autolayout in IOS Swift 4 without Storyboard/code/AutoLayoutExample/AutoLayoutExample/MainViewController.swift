//
//  MainViewController.swift
//  AutoLayoutExample
//
//  Created by Nguyen Duc Hoang on 2/1/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    let lifeFormImageView:UIImageView = {
        //This is a closure = "no name" function
        let imageView = UIImageView(image: #imageLiteral(resourceName: "icon-lifeform"))
        imageView.translatesAutoresizingMaskIntoConstraints = false //Enable "auto layout"
        return imageView
    }()
    let titleTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false //Enable "auto layout"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.text = "Welcome to my amazing App !"
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.textAlignment = .center
        textView.backgroundColor = UIColor.clear
        return textView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        view.addSubview(lifeFormImageView)
        lifeFormImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lifeFormImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        lifeFormImageView.widthAnchor.constraint(equalToConstant: 130).isActive = true
        lifeFormImageView.heightAnchor.constraint(equalToConstant: 130).isActive = true
        //Title text
        view.addSubview(titleTextView)
        titleTextView.topAnchor.constraint(equalTo: lifeFormImageView.bottomAnchor, constant: 20).isActive = true
        titleTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        titleTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        titleTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
}
