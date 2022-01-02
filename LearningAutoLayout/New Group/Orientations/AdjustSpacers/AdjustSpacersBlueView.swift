//
//  AdjustSpacersBlueView.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 02.01.2022.
//

import UIKit

class AdjustSpacersBlueView: UIView {

    var topSpacer = makeSpacerView(height: 100)
    var bottomSpacer = makeSpacerView(height: 100)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .blue
        topSpacer.backgroundColor = .white
        bottomSpacer.backgroundColor = .white
        
        let label = makeLabel(withText: "Adjusting Constraints", size: 24)
        let stackView = makeStackView(withOrientation: .vertical)
        
        stackView.addArrangedSubview(topSpacer)
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(bottomSpacer)
        
        addSubview(stackView)
        
        stackView.topAnchor.constraint(
            equalTo: safeAreaLayoutGuide.topAnchor
        ).isActive = true
        stackView.leadingAnchor.constraint(
            equalTo: leadingAnchor
        ).isActive = true
        stackView.trailingAnchor.constraint(
            equalTo: trailingAnchor
        ).isActive = true
        stackView.bottomAnchor.constraint(
            equalTo: safeAreaLayoutGuide.bottomAnchor
        ).isActive = true
        
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(
            top: 20, leading: 20, bottom: 20, trailing: 20
        )
        
        adjustConstraints()
    }
    
    func adjustConstraints() {
        if UIApplication.shared.statusBarOrientation.isPortrait {
            topSpacer.isHidden = true
            bottomSpacer.isHidden = true
        } else {
            topSpacer.isHidden = false
            bottomSpacer.isHidden = false
        }
    }
    
    override var intrinsicContentSize: CGSize {
        CGSize(width: 200, height: 100)
    }
}
