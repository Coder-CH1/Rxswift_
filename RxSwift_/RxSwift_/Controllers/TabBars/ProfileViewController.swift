//
//  ProfileViewController.swift
//  RxSwift_
//
//  Created by Mac on 16/11/2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let informationLabel = Label(label: "Information", textColor: .black, font: UIFont.systemFont(ofSize: 17, weight: .semibold))
    
    lazy var profileImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .gray
        image.heightAnchor.constraint(equalToConstant: 70).isActive = true
        image.widthAnchor.constraint(equalToConstant: 70).isActive = true
        image.layer.cornerRadius = 35
        return image
    }()
    
    let profileName = Label(label: "John doe", textColor: .black, font: UIFont.systemFont(ofSize: 18, weight: .semibold))
    
    let profileEmail = Label(label: "johndoe@gmail.com", textColor: .gray, font: UIFont.systemFont(ofSize: 13, weight: .regular))
    
    let profilePhone = Label(label: "+23480", textColor: .gray, font: UIFont.systemFont(ofSize: 13, weight: .regular))
    
    let profileAddress = Label(label: "No 16 john doe street", textColor: .gray, font: UIFont.systemFont(ofSize: 13, weight: .regular))
    
    lazy var profileView: UIView = {
        let profileView = UIView()
        profileView.translatesAutoresizingMaskIntoConstraints = false
        profileView.backgroundColor = .white
        profileView.layer.cornerRadius = 10
        return profileView
    }()
    
    let paymentLabel = Label(label: "Payment Method", textColor: .black, font: UIFont.systemFont(ofSize: 17, weight: .semibold))
    
    lazy var paymentView: UIView = {
        let profileView = UIView()
        profileView.translatesAutoresizingMaskIntoConstraints = false
        profileView.backgroundColor = .white
        profileView.layer.cornerRadius = 10
        return profileView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        view.backgroundColor = #colorLiteral(red: 0.9436392188, green: 0.9436392188, blue: 0.9436392188, alpha: 1)
        setupViews()
    }
    
    func setupViews() {
        let subviews = [informationLabel, profileView, profileImage, profileName, profileEmail, profileAddress, paymentLabel, paymentView]
        for subview in subviews {
            view.addSubview(subview)
        }
        NSLayoutConstraint.activate([
            informationLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            informationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            
            profileView.topAnchor.constraint(equalTo: informationLabel.bottomAnchor, constant: 5),
            profileView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            profileView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            profileView.heightAnchor.constraint(equalToConstant: 133),
            
            profileImage.topAnchor.constraint(equalTo: profileView.topAnchor, constant: 20),
            profileImage.leadingAnchor.constraint(equalTo: profileView.leadingAnchor, constant: 20),
            
            profileName.topAnchor.constraint(equalTo: profileView.topAnchor, constant: 20),
            profileName.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 20),
            
            profileEmail.topAnchor.constraint(equalTo: profileName.bottomAnchor, constant: 10),
            profileEmail.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 20),
            
            profileAddress.topAnchor.constraint(equalTo: profileEmail.bottomAnchor, constant: 10),
            profileAddress.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 20),
            
            paymentLabel.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 30),
            paymentLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            
            paymentView.topAnchor.constraint(equalTo: paymentLabel.bottomAnchor, constant: 5),
            paymentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            paymentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            paymentView.heightAnchor.constraint(equalToConstant: 231)
        ])
    }
}
