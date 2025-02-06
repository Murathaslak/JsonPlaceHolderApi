//
//  UsersTableViewCell.swift
//  JsonPlaceHolderApi
//
//  Created by Osman Murat Haslak on 5.02.2025.
//

import UIKit

// MARK: - UsersTableViewCell
class UsersTableViewCell: UITableViewCell {
    static let reuseID = "userCell"
    
    let customImageView = JPHAImageView(frame: .zero, imageName: "person.circle")
    
    var userNameLabel = JPHALabel(textAlignment: .left, fontSize: 14, weight: .bold)
    var userEmailLabel = JPHALabel(textAlignment: .left, fontSize: 12, weight: .medium)
    
    let phoneIcon = JPHAImageView(frame: .zero, imageName: "phone.fill")
    var userPhoneLabel = JPHALabel(textAlignment: .left, fontSize: 12, weight: .medium)
    
    let cityIcon = JPHAImageView(frame: .zero, imageName: "house.fill")
    var userCityLabel = JPHALabel(textAlignment: .right, fontSize: 12, weight: .medium)

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCellUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCellUI() {
        backgroundColor = .white
        
        layer.cornerRadius = 10
        clipsToBounds = true
        
        addSubview(customImageView)
        addSubview(userNameLabel)
        addSubview(userEmailLabel)
        addSubview(userPhoneLabel)
        addSubview(phoneIcon)
        addSubview(cityIcon)
        addSubview(userCityLabel)
        
        NSLayoutConstraint.activate([
            
            customImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            customImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            customImageView.widthAnchor.constraint(equalToConstant: 40),
            customImageView.heightAnchor.constraint(equalToConstant: 40),
            
            userNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            userNameLabel.leadingAnchor.constraint(equalTo: customImageView.trailingAnchor, constant: 8),
            
            userEmailLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 2),
            userEmailLabel.leadingAnchor.constraint(equalTo: customImageView.trailingAnchor, constant: 8),
            
            phoneIcon.topAnchor.constraint(equalTo: userEmailLabel.bottomAnchor, constant: 2),
            phoneIcon.leadingAnchor.constraint(equalTo: customImageView.trailingAnchor, constant: 8),
            phoneIcon.widthAnchor.constraint(equalToConstant: 15),
            phoneIcon.heightAnchor.constraint(equalToConstant: 15),
            
            userPhoneLabel.centerYAnchor.constraint(equalTo: phoneIcon.centerYAnchor),
            userPhoneLabel.leadingAnchor.constraint(equalTo: phoneIcon.trailingAnchor, constant: 2),
            
            cityIcon.centerYAnchor.constraint(equalTo: phoneIcon.centerYAnchor),
            cityIcon.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            cityIcon.widthAnchor.constraint(equalToConstant: 15),
            cityIcon.heightAnchor.constraint(equalToConstant: 15),
                        
            userCityLabel.centerYAnchor.constraint(equalTo: phoneIcon.centerYAnchor),
            userCityLabel.trailingAnchor.constraint(equalTo: cityIcon.leadingAnchor, constant: -2),
        
        ])
    }
    
    func configureCell(user: UserElement) {
        userNameLabel.text = user.name
        userEmailLabel.text = user.email
        userPhoneLabel.text = user.phone
        userCityLabel.text = user.address.city
    }

}
