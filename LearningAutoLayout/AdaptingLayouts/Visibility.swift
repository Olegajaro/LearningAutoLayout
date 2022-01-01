//
//  Visibility.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 01.01.2022.
//

import UIKit

class Visibility: UIViewController {

    let labelTwo = makeLabel(withText: "Now you don't", size: 32, color: .red)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    private func setupViews() {
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.distribution = .fillProportionally
        
        let labelOne = makeLabel(withText: "Now you see me", size: 32)
        let button = makeButton(withText: "Show/Hide", size: 32)
        
        stackView.addArrangedSubview(labelOne)
        stackView.addArrangedSubview(labelTwo)
        stackView.addArrangedSubview(button)
        
        view.addSubview(stackView)
        
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
        
        button.addTarget(self,
                         action: #selector(buttonPressed),
                         for: .primaryActionTriggered)
    }
    
    @objc private func buttonPressed() {
        labelTwo.isHidden.toggle()
    }
}
