//
//  Factories.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

// MARK: - Labels
func makeLabel(withText text: String) -> UILabel {
    let label = UILabel()
    
    label.translatesAutoresizingMaskIntoConstraints = false // important
    label.text = text
    label.textAlignment = .center
    label.backgroundColor = .yellow
    label.numberOfLines = 0
    
    return label
}

func makeLabel(withText text: String, size: CGFloat) -> UILabel {
    let label = makeLabel(withText: text)
    label.font = UIFont.systemFont(ofSize: size)

    return label
}

func makeSecondaryLabel(withText text: String) -> UILabel {
    let label = makeLabel(withText: text, size: 12)
    label.textColor = .gray

    return label
}

func makeButton(withText text: String) -> UIButton {
    let button = UIButton()
    
    button.translatesAutoresizingMaskIntoConstraints = false
    button.configuration = .plain()
    button.setTitle(text, for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.titleLabel?.adjustsFontSizeToFitWidth = true
    button.configuration?.contentInsets = NSDirectionalEdgeInsets(
        top: 8, leading: 16, bottom: 8, trailing: 16
    )
    button.backgroundColor = .blue
    button.titleLabel?.font = UIFont.systemFont(ofSize: 18)

    return button
}

func makeView(color: UIColor = .red) -> UIView {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = color

    return view
}
