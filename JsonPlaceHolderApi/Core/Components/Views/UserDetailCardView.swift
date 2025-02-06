//
//  UserDetailCardView.swift
//  JsonPlaceHolderApi
//
//  Created by Osman Murat Haslak on 6.02.2025.
//


import UIKit
import MapKit

// MARK: - UserDetailCardView
class UserDetailCardView: UIView {
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person.circle")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let divider: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let mapView: MKMapView = {
        let map = MKMapView()
        map.translatesAutoresizingMaskIntoConstraints = false
        map.layer.cornerRadius = 10
        map.clipsToBounds = true
        return map
    }()

    
    private let nameLabel = JPHALabel(textAlignment: .center, fontSize: 14, weight: .bold)
    private let usernameLabel = JPHALabel(textAlignment: .center, fontSize: 12, weight: .semibold)
    private let emailLabel = JPHALabel(textAlignment: .left, fontSize: 12, weight: .medium)
    private let phoneLabel = JPHALabel(textAlignment: .left, fontSize: 12, weight: .medium)
    private let websiteLabel = JPHALabel(textAlignment: .left, fontSize: 12, weight: .medium)
    private let companyLabel = JPHALabel(textAlignment: .left, fontSize: 12, weight: .medium)
    private let addressLabel = JPHALabel(textAlignment: .left, fontSize: 12, weight: .medium)
    private let companyTitleLabel = JPHALabel(textAlignment: .center, fontSize: 16, weight: .bold)
    private let companyName = JPHALabel(textAlignment: .left, fontSize: 12, weight: .medium)
    private let companyCatchPhrase = JPHALabel(textAlignment: .left, fontSize: 12, weight: .medium)
    private let companyBs = JPHALabel(textAlignment: .left, fontSize: 12, weight: .medium)



    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        backgroundColor = .white
        companyTitleLabel.text = "Company Information"
        
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(usernameLabel)
        addSubview(emailLabel)
        addSubview(phoneLabel)
        addSubview(websiteLabel)
        addSubview(companyLabel)
        addSubview(addressLabel)
        addSubview(divider)
        addSubview(companyTitleLabel)
        addSubview(companyName)
        addSubview(companyCatchPhrase)
        addSubview(companyBs)
        
        addSubview(mapView)


        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            profileImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            profileImageView.widthAnchor.constraint(equalToConstant: 80),
            profileImageView.heightAnchor.constraint(equalToConstant: 80),
            
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            usernameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            usernameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            emailLabel.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 8),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            phoneLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8),
            phoneLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            phoneLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            websiteLabel.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor, constant: 8),
            websiteLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            websiteLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            companyLabel.topAnchor.constraint(equalTo: websiteLabel.bottomAnchor, constant: 8),
            companyLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            companyLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            addressLabel.topAnchor.constraint(equalTo: companyLabel.bottomAnchor, constant: 8),
            addressLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            addressLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            divider.leadingAnchor.constraint(equalTo: leadingAnchor),
            divider.trailingAnchor.constraint(equalTo: trailingAnchor),
            divider.heightAnchor.constraint(equalToConstant: 1),
            divider.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 10),
            
            companyTitleLabel.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 8),
            companyTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            companyTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            companyName.topAnchor.constraint(equalTo: companyTitleLabel.bottomAnchor, constant: 8),
            companyName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            companyName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            companyCatchPhrase.topAnchor.constraint(equalTo: companyName.bottomAnchor, constant: 8),
            companyCatchPhrase.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            companyCatchPhrase.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            companyBs.topAnchor.constraint(equalTo: companyCatchPhrase.bottomAnchor, constant: 8),
            companyBs.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            companyBs.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            mapView.topAnchor.constraint(equalTo: companyBs.bottomAnchor, constant: 12),
            mapView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            mapView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            mapView.heightAnchor.constraint(equalToConstant: 200),
            
        ])
    }
    
    private func showLocationOnMap(latitude: Double, longitude: Double) {
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)

        let region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
        
        mapView.setRegion(region, animated: true)

        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = "Adres"
        mapView.addAnnotation(annotation)
    }

    
    func configure(with user: UserElement) {
        nameLabel.text = user.name
        usernameLabel.text = "@\(user.userName)"
        emailLabel.text = "📧 \(user.email)"
        phoneLabel.text = "📞 \(user.phone)"
        websiteLabel.text = "🌍 \(user.webSite)"
        companyLabel.text = "🏢 \(user.company.name)"
        addressLabel.text = "📍 \(user.address.street), \(user.address.city)"
        addressLabel.numberOfLines = 0
        companyName.text = "🏢 \(user.company.name)"
        companyBs.text = "📈 \(user.company.bs)"
        companyCatchPhrase.text = "💡 \(user.company.catchPhrase)"
        
        if let lat = Double(user.address.geo.lat), let lng = Double(user.address.geo.lng) {
            showLocationOnMap(latitude: lat, longitude: lng)
        }

    }
}

