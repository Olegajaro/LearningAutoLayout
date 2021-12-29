//
//  SpacerViews.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

class SpacerViews: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    private func setupViews() {
        navigationItem.title = "Spacer Views"
        
        let leadingGuide = UILayoutGuide()
        let okButton = makeButton(withText: "OK", color: .darkBlue)
        let middleGuide = UILayoutGuide()
        let cancelButton = makeButton(withText: "CANCEL", color: .darkGreen)
        let trailingGuide = UILayoutGuide()
        
        view.addSubview(okButton)
        view.addSubview(cancelButton)
        view.addLayoutGuide(leadingGuide)
        view.addLayoutGuide(middleGuide)
        view.addLayoutGuide(trailingGuide)
        
        // setup constraints
        let margins = view.layoutMarginsGuide
        
        // leading guide
        margins.leadingAnchor.constraint(equalTo: leadingGuide.leadingAnchor)
            .isActive = true
        leadingGuide.trailingAnchor.constraint(equalTo: okButton.leadingAnchor)
            .isActive = true
        
        // middle guide
        okButton.trailingAnchor.constraint(equalTo: middleGuide.leadingAnchor)
            .isActive = true
        middleGuide.trailingAnchor.constraint(equalTo: cancelButton.leadingAnchor)
            .isActive = true
        
        // trailing guide
        cancelButton.trailingAnchor.constraint(equalTo: trailingGuide.leadingAnchor)
            .isActive = true
        trailingGuide.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
            .isActive = true
        
        // button equal width
        okButton.widthAnchor.constraint(equalTo: cancelButton.widthAnchor)
            .isActive = true
        
        // spacer equal width
        leadingGuide.widthAnchor.constraint(equalTo: middleGuide.widthAnchor)
            .isActive = true
        leadingGuide.widthAnchor.constraint(equalTo: trailingGuide.widthAnchor)
            .isActive = true
        
        // vertical position
        leadingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            .isActive = true
        middleGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            .isActive = true
        trailingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            .isActive = true
        okButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            .isActive = true
        cancelButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            .isActive = true
        
        // giving layout guides default height
        leadingGuide.heightAnchor.constraint(equalToConstant: 1).isActive = true
        middleGuide.heightAnchor.constraint(equalToConstant: 1).isActive = true
        trailingGuide.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
}
