//
//  UIView+Extension.swift
//  JsonPlaceHolderApi
//
//  Created by Osman Murat Haslak on 5.02.2025.
//

import UIKit

extension UIView {
    func pinToEdgesOf(view: UIView, verticalPadding: CGFloat = 0, horizontalPadding: CGFloat = 0) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: verticalPadding),
            leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: horizontalPadding),
            trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -horizontalPadding),
            bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -verticalPadding)
        ])
    }
}

