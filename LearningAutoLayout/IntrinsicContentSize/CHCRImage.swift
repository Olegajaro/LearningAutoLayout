//
//  CHCRImage.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

class CHCRImage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "CHCR - Image"
        
        let image = makeImageView(named: "rush")
        let label = makeLabel(withText: "Title", size: 32)
        let button = makeButton(withText: "Get Started")

        view.addSubview(image)
        view.addSubview(label)
        view.addSubview(button)

        // imageViews with content have intrinsic size
        image.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor
        ).isActive = true
        image.leadingAnchor.constraint(
            equalTo: view.leadingAnchor
        ).isActive = true
        image.trailingAnchor.constraint(
            equalTo: view.trailingAnchor
        ).isActive = true
        
        label.topAnchor.constraint(
            equalTo: image.bottomAnchor, constant: 8
        ).isActive = true
        label.leadingAnchor.constraint(
            equalTo: view.leadingAnchor, constant: 8
        ).isActive = true
        label.trailingAnchor.constraint(
            equalTo: view.trailingAnchor, constant: 8
        ).isActive = true
        
        button.topAnchor.constraint(
            equalTo: label.bottomAnchor, constant: 300
        ).isActive = true
        button.bottomAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16
        ).isActive = true
        button.centerXAnchor.constraint(
            equalTo: view.centerXAnchor
        ).isActive = true
    }
}
