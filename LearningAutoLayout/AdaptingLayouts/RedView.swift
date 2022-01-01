//
//  RedView.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 01.01.2022.
//

import UIKit

class RedView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .red
    }
    
    override var intrinsicContentSize: CGSize {
        CGSize(width: 200, height: 100)
    }
}
