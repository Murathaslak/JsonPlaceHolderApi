//
//  HomeScreen.swift
//  JsonPlaceHolderApi
//
//  Created by Osman Murat Haslak on 5.02.2025.
//

import UIKit

// Sadece classlara uygulanabilirliğinden emin olmak için AnyObject conform ediyoruz
protocol HomeScreenInterface: AnyObject {
    func configureVC()
    func configureTableView()
    func reloadTableViewData()
}

class HomeScreen: UIViewController {
    
    let viewModel = HomeScreenViewModel()
    
    var usersTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.view = self
        viewModel.viewDidLoad()
    }
    
}

extension HomeScreen: HomeScreenInterface {
    
    func configureVC() {
        title = "User List"
        view.backgroundColor = .systemGray6
    }
    
    func configureTableView() {
        usersTableView = UITableView(frame: .zero, style: .plain)
        view.addSubview(usersTableView)

        usersTableView.translatesAutoresizingMaskIntoConstraints = false
        usersTableView.delegate = self
        usersTableView.dataSource = self
        usersTableView.register(UsersTableViewCell.self, forCellReuseIdentifier: UsersTableViewCell.reuseID)
        usersTableView.showsVerticalScrollIndicator = false
        usersTableView.layer.cornerRadius = 10
        
        usersTableView.pinToEdgesOf(view: view, verticalPadding: 0, horizontalPadding: 20)
    }
    
    func reloadTableViewData() {
         DispatchQueue.main.async {
             self.usersTableView.reloadData()
         }
     }
    
}

extension HomeScreen: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.userList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UsersTableViewCell.reuseID, for: indexPath) as! UsersTableViewCell
        cell.configureCell(user: viewModel.userList[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(HomeDetailScreen(user: self.viewModel.userList[indexPath.row]), animated: true)
        }
    }

    
    
}
