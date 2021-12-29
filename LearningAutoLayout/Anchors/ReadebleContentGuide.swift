//
//  ReadebleContentGuide.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

class ReadebleContentGuide: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "Readeble Content Guide"
        
        let label = makeLabel(
            withText:"""
Buttons have five states that define their appearance: default, highlighted, focused, selected, and disabled. When you add a button to your interface, it is in the default state initially, which means the button is enabled and the user is not interacting with it. As the user interacts with the button, its state changes to the other values. For example, when the user taps a button with a title, the button moves to the highlighted state.
Buttons have five states that define their appearance: default, highlighted, focused, selected, and disabled. When you add a button to your interface, it is in the default state initially, which means the button is enabled and the user is not interacting with it. As the user interacts with the button, its state changes to the other values. For example, when the user taps a button with a title, the button moves to the highlighted state.
"""
        )
        
        view.addSubview(label)
        
        label.topAnchor.constraint(
            equalTo: view.readableContentGuide.topAnchor
        ).isActive = true
        label.leadingAnchor.constraint(
            equalTo: view.readableContentGuide.leadingAnchor
        ).isActive = true
        label.bottomAnchor.constraint(
            equalTo: view.readableContentGuide.bottomAnchor
        ).isActive = true
        label.trailingAnchor.constraint(
            equalTo: view.readableContentGuide.trailingAnchor
        ).isActive = true
    }
}
