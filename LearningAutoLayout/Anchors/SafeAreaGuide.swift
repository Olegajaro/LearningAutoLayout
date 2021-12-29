//
//  SafeAreaGuide.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

class SafeAreaGuide: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    func setupViews() {
        navigationItem.title = "Safe Area Guide"
        
        let topLabel = makeLabel(withText: "Top")
        let bottomLabel = makeLabel(withText: "Bottom")
        let leadingLabel = makeLabel(withText: "Leading")
        let trailingLabel = makeLabel(withText: "Trailing")
        
        view.addSubview(topLabel)
        view.addSubview(bottomLabel)
        view.addSubview(leadingLabel)
        view.addSubview(trailingLabel)
        
        NSLayoutConstraint.activate([
            // topLabel constraint
            topLabel.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 8
            ),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // bottomLabel constraint
            bottomLabel.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8
            ),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // leadingLabel constraint
            leadingLabel.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor
            ),
            leadingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            // trailingLabel constraint
            trailingLabel.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor
            ),
            trailingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
