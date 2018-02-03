//
//  MainViewController.swift
//  AutoLayoutExample
//
//  Created by Nguyen Duc Hoang on 2/1/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    let topHalfView: UIView = {
        let view = UIView()
//        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
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
        textView.text = "Welcome to my amazing App !."
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.textAlignment = .center
        textView.backgroundColor = UIColor.clear
        return textView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        autoLayoutUI()
    }
    fileprivate func autoLayoutUI() {
        view.backgroundColor = .white
        view.addSubview(topHalfView)
        NSLayoutConstraint.activate([topHalfView.topAnchor.constraint(equalTo: view.topAnchor),
                                     topHalfView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     topHalfView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                     topHalfView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
                                     ])
        topHalfView.addSubview(lifeFormImageView)
        lifeFormImageView.centerXAnchor.constraint(equalTo: topHalfView.centerXAnchor).isActive = true
        lifeFormImageView.centerYAnchor.constraint(equalTo: topHalfView.centerYAnchor).isActive = true
        lifeFormImageView.widthAnchor.constraint(equalToConstant: 130).isActive = true
        lifeFormImageView.heightAnchor.constraint(equalToConstant: 130).isActive = true
        //Title text
        view.addSubview(titleTextView)
        titleTextView.topAnchor.constraint(equalTo: lifeFormImageView.bottomAnchor, constant: 20).isActive = true
//        titleTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
//        titleTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        titleTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        titleTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        titleTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}
