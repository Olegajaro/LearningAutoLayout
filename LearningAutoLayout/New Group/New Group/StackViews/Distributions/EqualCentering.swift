//
//  EqualCentering.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

class EqualCentering: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    private func setupViews() {
        navigationItem.title = "Equal Centring"
        
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.distribution = .equalCentering
        
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
