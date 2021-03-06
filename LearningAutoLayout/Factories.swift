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
    
    label.translatesAutoresizingMaskIntoConstraints = false
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

func makeLabel(withText text: String, size: CGFloat, color: UIColor) -> UILabel {
    let label = makeLabel(withText: text, size: size)
    label.backgroundColor = color
    
    return label
}

func makeSecondaryLabel(withText text: String) -> UILabel {
    let label = makeLabel(withText: text, size: 12)
    label.textColor = .gray

    return label
}

// MARK: - Buttons
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

func makeButton(withText text: String, size: CGFloat = 18, color: UIColor = .blue) -> UIButton {
    let button = makeButton(withText: text)
    button.backgroundColor = color
    button.titleLabel?.font = UIFont.systemFont(ofSize: size)
    
    return button
}

func makeButton(withText text: String, color: UIColor) -> UIButton {
    let button = makeButton(withText: text)
    button.backgroundColor = color
    
    return button
}

func makeView(color: UIColor = .red) -> UIView {
    let view = UIView()
    
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = color

    return view
}

func makeTextField(withPlaceholderText placeHolderText: String) -> UITextField {
    let textField = UITextField()
    
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.placeholder = placeHolderText
    textField.backgroundColor = .orange

    return textField
}

func makeImageView(named: String) -> UIImageView {
    let view = UIImageView()
    
    view.translatesAutoresizingMaskIntoConstraints = false
    view.contentMode = .scaleAspectFit
    view.image = UIImage(named: named)

    // By making the image hug itself a little bit less and less resistant to being compressed
    // we allow the image to stretch and grow as required
    view.setContentHuggingPriority(UILayoutPriority(rawValue: 249),
                                   for: .vertical)
    view.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 749),
                                                 for: .vertical)

    return view
}

func makeSwitch(isOn: Bool) -> UISwitch {
    let theSwitch = UISwitch()
    
    theSwitch.translatesAutoresizingMaskIntoConstraints = false
    theSwitch.isOn = isOn

    return theSwitch
}

func makeStackView(withOrientation axis: NSLayoutConstraint.Axis) -> UIStackView {
    let stackView = UIStackView()
    
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = axis
    stackView.distribution = .fill
    stackView.alignment = .fill
    stackView.spacing = 8.0

    return stackView
}

func makeScrollView() -> UIScrollView {
    let scrollView = UIScrollView()
    scrollView.translatesAutoresizingMaskIntoConstraints = false
    
    return scrollView
}

public func makeSpacerView(height: CGFloat? = nil) -> UIView {
    let spacerView = UIView(frame: .zero)

    if let height = height {
        spacerView.heightAnchor.constraint(equalToConstant: height).setActiveBreakable()
    }
    spacerView.translatesAutoresizingMaskIntoConstraints = false

    return spacerView
}

public extension NSLayoutConstraint {
    @objc func setActiveBreakable(priority: UILayoutPriority = UILayoutPriority(900)) {
        self.priority = priority
        isActive = true
    }
}


extension UIColor {
    static let darkBlue = UIColor(red: 10/255, green: 132/255,
                                  blue: 255/255, alpha: 1)
    static let darkGreen = UIColor(red: 48/255, green: 209/255,
                                   blue: 88/255, alpha: 1)
    static let darkOrange = UIColor(red: 255/255, green: 149/255,
                                    blue: 0/255, alpha: 1)
    static let darkRed = UIColor(red: 255/255, green: 59/255,
                                 blue: 48/255, alpha: 1)
    static let darkTeal = UIColor(red: 90/255, green: 200/255,
                                  blue: 250/255, alpha: 1)
    static let darkYellow = UIColor(red: 255/255, green: 204/255,
                                    blue: 0/255, alpha: 1)
}
