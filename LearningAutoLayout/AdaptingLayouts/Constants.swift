//
//  Constants.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 01.01.2022.
//

import UIKit

class Constants: UIViewController {

    var topAnchorConstaint = NSLayoutConstraint()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    private func setupViews() {
        let label = makeLabel(withText: "Watch me!", size: 32)
        let button = makeButton(withText: "Up/Down")
        
        view.addSubview(label)
        view.addSubview(button)
        
        // constraint we are going alter
        topAnchorConstaint = label.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80
        )
        topAnchorConstaint.isActive = true
        
        // static constaints that aren't going to change
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        button.addTarget(self, action: #selector(buttonPressed), for: .primaryActionTriggered)
    }
    
    @objc private func buttonPressed() {
        if topAnchorConstaint.constant == 80 {
            topAnchorConstaint.constant = 80 * 2
        } else {
            topAnchorConstaint.constant = 80
        }
    }
}
