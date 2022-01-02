//
//  AdjustConstaintsBlueView.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 02.01.2022.
//

import UIKit

class AdjustConstaintsBlueView: UIView {
    
    var topAnchorConstraint = NSLayoutConstraint()
    var centerYConstraint = NSLayoutConstraint()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .blue
        
        let label = makeLabel(withText: "Adjusting Constraints")
        
        addSubview(label)
        
        // static constraints
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        // dynamic constraints
        topAnchorConstraint = label.topAnchor.constraint(
            equalTo: topAnchor, constant: 8
        )
        centerYConstraint = label.centerYAnchor.constraint(
            equalTo: centerYAnchor
        )
        
        adjustConstraints()
    }
    
    func adjustConstraints() {
        if UIApplication.shared.statusBarOrientation.isPortrait {
            topAnchorConstraint.isActive = true
            centerYConstraint.isActive = false
        } else {
            topAnchorConstraint.isActive = false
            centerYConstraint.isActive = true
        }
    }
    
    override var intrinsicContentSize: CGSize {
        CGSize(width: 200, height: 100)
    }
}
