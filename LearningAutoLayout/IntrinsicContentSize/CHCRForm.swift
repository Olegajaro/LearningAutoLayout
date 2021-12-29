//
//  CHCRForm.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

class CHCRForm: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    private func setupViews() {
        navigationItem.title = "CHCR - Form"
        
        let label = makeLabel(withText: "Name")
        let textField = makeTextField(withPlaceholderText: "Enter name here")
        
        view.addSubview(label)
        view.addSubview(textField)
        
        label.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8
        ).isActive = true
        label.leadingAnchor.constraint(
            equalTo: view.leadingAnchor, constant: 8
        ).isActive = true
        
        // By making the label hug itself more (than the default value 250),
        // it retains its intrinsic content size while enabling the textField to stretch
        label.setContentHuggingPriority(UILayoutPriority(251), for: .horizontal)
        
        textField.firstBaselineAnchor.constraint(
            equalTo: label.firstBaselineAnchor
        ).isActive = true
        textField.leadingAnchor.constraint(
            equalTo: label.trailingAnchor, constant: 8
        ).isActive = true
        textField.trailingAnchor.constraint(
            equalTo: view.trailingAnchor, constant: -8
        ).isActive = true
    }

}
