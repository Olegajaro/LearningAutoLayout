//
//  OverrideLabel.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

class OverrideLabel: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    private func setupViews() {
        navigationItem.title = "Override Label"
        
        let labelOne = makeLabelTest(withText: "LabelOne")
        
        view.addSubview(labelOne)
        
        labelOne.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8
        ).isActive = true
        labelOne.leadingAnchor.constraint(
            equalTo: view.leadingAnchor, constant: 8
        ).isActive = true
        
        // labelOne.heightAnchor.constraint(equalToConstant: 100).isActive = true
        // labelOne.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        // labelOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
        //    .isActive = true
    }
    
    private func makeLabelTest(withText text: String) -> UILabel {
        let label = BigLabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont.systemFont(ofSize: 32)
        label.backgroundColor = .yellow
        
        return label
    }
}

final class BigLabel: UILabel {
    override var intrinsicContentSize: CGSize {
        CGSize(width: 200, height: 300)
    }
}
