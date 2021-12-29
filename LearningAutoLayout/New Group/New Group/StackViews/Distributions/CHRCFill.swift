//
//  CHRCFill.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

class CHRCFill: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    private func setupViews() {
        navigationItem.title = "CHRC - Fill"
        
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.distribution = .fill
        
        let bigLabel = makeLabel(
            withText: "BIG", size: 128, color: .darkYellow
        )
        let medLabel = makeLabel(
            withText: "MED", size: 64, color: .darkOrange
        )
        let smlLabel = makeLabel(
            withText: "SML", size: 32, color: .darkGreen
        )
        
        stackView.addArrangedSubview(medLabel)
        stackView.addArrangedSubview(bigLabel) // stuck here for demo purposes...
        stackView.addArrangedSubview(smlLabel)
        
        view.addSubview(stackView)
        
        // It's when the stackView is pinned, that the height becomes ambiguous.
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
            .isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
            .isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            .isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            .isActive = true
        
        // .fill will randomly strech one of the views fill the empty space
        
        // But we can control which one it is by choosing which label
        // we would like to stretch.
        bigLabel.setContentHuggingPriority(UILayoutPriority(48), for: .vertical)
    }
}
