//
//  MainViewController.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

struct Lab {
    let name: String
    let viewController: UIViewController
}

private let reuseIdentifier = "Cell"

class MainViewController: UITableViewController {

    var labs: [Lab]
    var navBarTitle: String
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    init(labs: [Lab], navBarTitle: String) {
        self.labs = labs
        self.navBarTitle = navBarTitle
        
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        title = navBarTitle
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: reuseIdentifier)
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        labs.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: reuseIdentifier,
            for: indexPath
        )
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        
        var content = cell.defaultContentConfiguration()
        
        content.text = labs[indexPath.row].name
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(
            labs[indexPath.row].viewController,
            animated: true
        )
    }
}

