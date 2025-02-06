//
//  MockHomeScreenViewController.swift
//  JsonPlaceHolderApiTests
//
//  Created by Osman Murat Haslak on 6.02.2025.
//

import UIKit
@testable import JsonPlaceHolderApi

final class MockHomeScreenViewController: UIViewController, HomeScreenInterface, UITableViewDelegate {
    
    var usersTableView: UITableView!
    var viewModel: HomeScreenViewModelInterface?
    var reloadTableViewDataClosure: (() -> Void)?
        
    func configureVC() {}
    
    func configureTableView() {
        self.usersTableView = UITableView()
        self.view.addSubview(usersTableView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTableView()
    }
    
    func reloadTableViewData() {
        reloadTableViewDataClosure?()
    }

}


