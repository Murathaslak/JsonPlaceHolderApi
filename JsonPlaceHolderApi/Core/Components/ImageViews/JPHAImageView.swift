//
//  JPHAImageView.swift
//  JsonPlaceHolderApi
//
//  Created by Osman Murat Haslak on 6.02.2025.
//

import UIKit

class JPHAImageView: UIImageView {
    
    init(frame: CGRect, imageName: String) {
        super.init(frame: frame)
        if let image = UIImage(systemName: imageName) {
            self.image = image
        }
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init() {
        self.init(frame: .zero, imageName: "")
    }
    
    private func configure() {
        layer.cornerRadius = 0
        contentMode = .scaleAspectFit
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
    }
}


