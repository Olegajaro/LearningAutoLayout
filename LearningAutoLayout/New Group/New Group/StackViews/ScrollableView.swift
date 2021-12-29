//
//  ScrollableView.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

class ScrollableView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    private func setupViews() {
        navigationItem.title = "Scrollable"
        
        let stackView = makeStackView(withOrientation: .vertical)
        let scrollView = makeScrollView()

        scrollView.addSubview(stackView)
        view.addSubview(scrollView)
        
        for _ in 1...40 {
            let row = RowView()
            stackView.addArrangedSubview(row)
            row.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
                .isActive = true
        }
        
        // Pinning to the sides of view
        stackView.topAnchor.constraint(
            equalTo: scrollView.topAnchor
        ).isActive = true
        stackView.leadingAnchor.constraint(
            equalTo: scrollView.leadingAnchor
        ).isActive = true
        stackView.trailingAnchor.constraint(
            equalTo: scrollView.trailingAnchor
        ).isActive = true
        stackView.bottomAnchor.constraint(
            equalTo: scrollView.bottomAnchor
        ).isActive = true
        
        // Pinning scrollView
        scrollView.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor
        ).isActive = true
        scrollView.leadingAnchor.constraint(
            equalTo: view.leadingAnchor
        ).isActive = true
        scrollView.trailingAnchor.constraint(
            equalTo: view.trailingAnchor
        ).isActive = true
        scrollView.bottomAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.bottomAnchor
        ).isActive = true
    }
}
