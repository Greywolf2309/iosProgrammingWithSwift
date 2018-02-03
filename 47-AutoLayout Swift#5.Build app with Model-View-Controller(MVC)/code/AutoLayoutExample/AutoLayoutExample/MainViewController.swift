//
//  MainViewController.swift
//  AutoLayoutExample
//
//  Created by Nguyen Duc Hoang on 2/1/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let previousButton:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Previous", for: .normal)
        button.setTitleColor(.red, for: .normal)
        return button
    }()
    let pageControl:UIPageControl = {
        let _pageControl = UIPageControl()
        _pageControl.translatesAutoresizingMaskIntoConstraints = false
        _pageControl.currentPage = 0
        _pageControl.numberOfPages = 5
        _pageControl.currentPageIndicatorTintColor = .red
        _pageControl.pageIndicatorTintColor = .lightGray
        return _pageControl
    }()
    let nextButton:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next", for: .normal)
        button.setTitleColor(.red, for: .normal)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()        
        layoutBottomButtons()
    }
    
    fileprivate func layoutBottomButtons() {
        view.addSubview(previousButton)
        view.addSubview(pageControl)
        view.addSubview(nextButton)
        let bottomStackView = UIStackView(arrangedSubviews: [previousButton, pageControl, nextButton])
        view.addSubview(bottomStackView)
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false //Enable "auto layout"
        NSLayoutConstraint.activate([
            //Add SafetyArea
            bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomStackView.heightAnchor.constraint(equalToConstant: 50)
        ])
        bottomStackView.distribution = .fillEqually
        bottomStackView.axis = .horizontal
        
    }
}
