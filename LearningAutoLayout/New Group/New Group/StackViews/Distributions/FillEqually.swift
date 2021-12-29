//
//  FillEqually.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

class FillEqually: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "Fill Equally"
        
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.distribution = .fillEqually
        
        stackView.addArrangedSubview(makeLabel(
            withText: "BIG", size: 128, color: .darkYellow
        ))
        stackView.addArrangedSubview(makeLabel(
            withText: "MED", size: 64, color: .darkOrange
        ))
        stackView.addArrangedSubview(makeLabel(
            withText: "SML", size: 32, color: .darkGreen
        ))
        
        view.addSubview(stackView)
        
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            .isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            .isActive = true
    }
}
