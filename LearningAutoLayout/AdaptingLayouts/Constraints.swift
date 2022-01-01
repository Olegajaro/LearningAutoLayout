//
//  Constraints.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 01.01.2022.
//

import UIKit

class Constraints: UIViewController {

    var leadingAnchorConstraints = NSLayoutConstraint()
    var trailingAcnhorConstaints = NSLayoutConstraint()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
        
    private func setupViews() {
        let label = makeLabel(withText: "Watch me!", size: 32)
        let button = makeButton(withText: "Left/Right")
        
        view.addSubview(label)
        view.addSubview(button)
        
        // constraint we are going alter
        leadingAnchorConstraints = label.leadingAnchor.constraint(
            equalTo: view.leadingAnchor, constant: 80
        )
        trailingAcnhorConstaints = label.trailingAnchor.constraint(
            equalTo: view.trailingAnchor, constant: -80
        )
        
        // static constaints that aren't going to change
        label.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80
        ).isActive = true
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        button.addTarget(self, action: #selector(buttonPressed), for: .primaryActionTriggered)
        
        // start by activating the leading constraint
        leadingAnchorConstraints.isActive = true
    }
    
    @objc private func buttonPressed() {
        if leadingAnchorConstraints.isActive {
            leadingAnchorConstraints.isActive = false
            trailingAcnhorConstaints.isActive = true
        } else {
            trailingAcnhorConstaints.isActive = false
            leadingAnchorConstraints.isActive = true
        }
    }
}
