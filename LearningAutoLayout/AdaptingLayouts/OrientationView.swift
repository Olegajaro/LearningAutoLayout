//
//  OrientationView.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 01.01.2022.
//

import UIKit

class OrientationView: UIViewController {
    
    var stackView: UIStackView

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
            selector: #selector(OrientationView.rotated),
            name: UIDevice.orientationDidChangeNotification,
            object: nil
        )
    }
    
    private func setupViews() {
        navigationItem.title = "Orientations"
        
        let redView = RedView()
        let blueView = BlueView()
        
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
    
    @objc private func rotated() {
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
