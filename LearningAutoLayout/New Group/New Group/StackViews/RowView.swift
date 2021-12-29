//
//  RowView.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

class RowView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        let titleLabel = makeLabel(withText: "Gapless Playback")
        let onOffSwitch = makeSwitch(isOn: true)
        
        addSubview(titleLabel)
        addSubview(onOffSwitch)
        
        titleLabel.topAnchor.constraint(
            equalTo: topAnchor
        ).isActive = true
        titleLabel.leadingAnchor.constraint(
            equalTo: leadingAnchor
        ).isActive = true
        
        onOffSwitch.centerYAnchor.constraint(
            equalTo: titleLabel.centerYAnchor
        ).isActive = true
        onOffSwitch.trailingAnchor.constraint(
            equalTo: trailingAnchor
        ).isActive = true
    }
    
    override var intrinsicContentSize: CGSize {
        CGSize(width: 200, height: 31)
    }
}
