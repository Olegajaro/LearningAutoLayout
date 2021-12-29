//
//  BasicAnchors.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

class BasicAnchors: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        let upperLeftLabel = makeLabel(withText: "upperLeft")
        let upperRightLabel = makeLabel(withText: "upperRight")
        let bottomLeftLabel = makeSecondaryLabel(withText: "bottomLeft")
        let button = makeButton(withText: "Pay Bill")
        let redView = makeView()
        
        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        view.addSubview(bottomLeftLabel)
        view.addSubview(button)
        view.addSubview(redView)
        
        // upperLeftLabel constraints
        upperLeftLabel.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor,
            constant: 8
        ).isActive = true
        upperLeftLabel.leadingAnchor.constraint(
            equalTo: view.leadingAnchor,
            constant: 8
        ).isActive = true
        
        // upperRightLabel constraints
        upperRightLabel.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor,
            constant: 8
        ).isActive = true
        upperRightLabel.trailingAnchor.constraint(
            equalTo: view.trailingAnchor,
            constant: -8
        ).isActive = true
        
        // bottomLeftLabel constraints
        bottomLeftLabel.bottomAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.bottomAnchor,
            constant: -8
        ).isActive = true
        bottomLeftLabel.leadingAnchor.constraint(
            equalTo: view.leadingAnchor,
            constant: 8
        ).isActive = true
        
        // bottomRightButton constraints
        button.bottomAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.bottomAnchor,
            constant: -8
        ).isActive = true
        button.trailingAnchor.constraint(
            equalTo: view.trailingAnchor,
            constant: -8
        ).isActive = true
        
        // redView constraints
        // Option 1: Size explicitly
        /*
        redView.centerXAnchor.constraint(
            equalTo: view.centerXAnchor
        ).isActive = true
        redView.centerYAnchor.constraint(
            equalTo: view.centerYAnchor
        ).isActive = true
        
        redView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        redView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        */
        
        // Option 2: Size dinamically (pinning)
        redView.leadingAnchor.constraint(
            equalTo: view.leadingAnchor,
            constant: 20
        ).isActive = true
        redView.trailingAnchor.constraint(
            equalTo: view.trailingAnchor,
            constant: -20
        ).isActive = true
        
        redView.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor,
            constant: 100
        ).isActive = true
        redView.bottomAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.bottomAnchor,
            constant: -100
        ).isActive = true
    }
}
