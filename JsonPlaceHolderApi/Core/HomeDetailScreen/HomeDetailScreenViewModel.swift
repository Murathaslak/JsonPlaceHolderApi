//
//  HomeDetailScreenViewModel.swift
//  JsonPlaceHolderApi
//
//  Created by Osman Murat Haslak on 6.02.2025.
//

import Foundation

protocol HomeDetailScreenViewModelInterface {
    var view: HomeDetailScreenInterface? { get set }
    func viewDidLoad()
}

final class HomeDetailScreenViewModel {
    weak var view: HomeDetailScreenInterface?
}

extension HomeDetailScreenViewModel: HomeDetailScreenViewModelInterface {
    
    func viewDidLoad() {
        view?.configureVC()
        view?.configureUserDetailCard()
    }
    
}
