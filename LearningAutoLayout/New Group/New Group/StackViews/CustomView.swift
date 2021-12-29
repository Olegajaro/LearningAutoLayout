//
//  CustomView.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

class CustomView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    private func setupViews() {
        navigationItem.title = "Custom"
        
        let row = RowView()
        
        let stackView = makeStackView(withOrientation: .vertical)
        
        stackView.addArrangedSubview(row)
        
        view.addSubview(stackView)
        
        // Centeting in the middle
//        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//            .isActive = true
//        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//            .isActive = true
        
        // Pinning to the sides
        stackView.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor
        ).isActive = true
        stackView.leadingAnchor.constraint(
            equalTo: view.leadingAnchor
        ).isActive = true
        stackView.trailingAnchor.constraint(
            equalTo: view.trailingAnchor
        ).isActive = true
        stackView.bottomAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.bottomAnchor
        ).isActive = true
    }
}
