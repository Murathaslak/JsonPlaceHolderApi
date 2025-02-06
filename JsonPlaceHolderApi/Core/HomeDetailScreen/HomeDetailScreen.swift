//
//  HomeDetailScreen.swift
//  JsonPlaceHolderApi
//
//  Created by Osman Murat Haslak on 6.02.2025.
//

import UIKit

protocol HomeDetailScreenInterface: AnyObject {
    func configureVC()
    func configureUserDetailCard()
}

final class HomeDetailScreen: UIViewController {
    
    private let user: UserElement
    private let viewModel = HomeDetailScreenViewModel()
    private let userDetailCard = UserDetailCardView()
    
    init(user: UserElement) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.view = self
        viewModel.viewDidLoad()
    }

}

extension HomeDetailScreen: HomeDetailScreenInterface {
    
    func configureVC() {
        view.backgroundColor = .systemGray6
    }
    
    func configureUserDetailCard() {
        view.addSubview(userDetailCard)
        
        userDetailCard.pinToEdgesOf(view: view, verticalPadding: 0, horizontalPadding: 20)
        userDetailCard.configure(with: user)
    }
}
