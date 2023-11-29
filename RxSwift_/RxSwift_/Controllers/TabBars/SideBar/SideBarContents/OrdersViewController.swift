//
//  OrdersViewController.swift
//  RxSwift_
//
//  Created by Mac on 17/11/2023.
//

import UIKit

class OrdersViewController: UIViewController {
    
    let orderingButton = Button(image: UIImage(systemName: ""), label: "Start ordering", btnTitleColor: .white, backgroundColor: #colorLiteral(red: 0.9803921569, green: 0.2901960784, blue: 0.04705882353, alpha: 1), radius: 30, imageColor: .clear)

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Orders"
        view.backgroundColor = .white
        setupViews()
    }
    
    func setupViews() {
        view.addSubview(orderingButton)
        NSLayoutConstraint.activate([
            orderingButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            orderingButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            orderingButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            orderingButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
}
