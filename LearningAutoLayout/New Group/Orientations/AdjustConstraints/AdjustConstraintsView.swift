//
//  AdjustConstraintsView.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 02.01.2022.
//

import UIKit

class AdjustConstraintsView: UIViewController {
    var stackView: UIStackView
    let blueView = AdjustConstaintsBlueView()

    init() {
        stackView = makeStackView(withOrientation: .vertical)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        registerForOrientationChanges()
    }
    
    private func registerForOrientationChanges() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(AdjustConstraintsView.rotatedViews),
            name: UIDevice.orientationDidChangeNotification,
            object: nil
        )
    }
    
    private func setupViews() {
        navigationItem.title = "Orientations"
        
        let redView = RedView()
        
        stackView.addArrangedSubview(redView)
        stackView.addArrangedSubview(blueView)
        
        view.addSubview(stackView)
        
        redView.heightAnchor.constraint(
            equalTo: blueView.heightAnchor
        ).isActive = true
        redView.widthAnchor.constraint(
            equalTo: blueView.widthAnchor
        ).isActive = true
        
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
    }
    
    @objc private func rotatedViews() {
        blueView.adjustConstraints()
        
        if UIDevice.current.orientation.isLandscape {
            print("Landscape")
            stackView.axis = .horizontal
        } else {
            print("Portrait")
            stackView.axis = .vertical
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
