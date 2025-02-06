//
//  HomeScreenViewModel.swift
//  JsonPlaceHolderApi
//
//  Created by Osman Murat Haslak on 5.02.2025.
//

import Foundation

protocol HomeScreenViewModelInterface {
    var view: HomeScreenInterface? { get set }
    func viewDidLoad()
    func getUsers()
}

final class HomeScreenViewModel {
    weak var view: HomeScreenInterface?
    private let service = UserService()
    var userList: [UserElement] = []
}

extension HomeScreenViewModel: HomeScreenViewModelInterface {
    
    func viewDidLoad() {
        view?.configureVC()
        view?.configureTableView()
        getUsers()
    }
    
    func getUsers() {
        service.downloadUsers { [weak self] returnedUserList in
            guard let self = self else { return }
            guard let returnedUserList = returnedUserList else { return }
            self.userList = returnedUserList
            view?.reloadTableViewData()
        }
    }
    
}
