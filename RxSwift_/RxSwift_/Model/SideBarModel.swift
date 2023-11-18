//
//  SideBarModel.swift
//  RxSwift_
//
//  Created by Mac on 17/11/2023.
//

import UIKit

struct Profile {
    var profileIcon: UIImage?
    var profileLabel: String
    //    var viewProfile: String
}


struct Orders {
    var ordersIcon: UIImage?
    var ordersLabel: String
}


struct Offer {
    var offerIcon: UIImage?
    var offerLabel: String
}


struct Privacy {
    var privacyIcon: UIImage?
    var privacyLabel: String
}


struct Security {
    var securityIcon: UIImage?
    var securityLabel: String
}

struct SidebarItem {
    enum ItemType {
        case profile(Profile)
        case orders(Orders)
        case offer(Offer)
        case  privacy(Privacy)
        case security(Security)
    }
    
    let type: ItemType
}

let profileItem = SidebarItem(type: .profile(Profile(profileIcon: UIImage(systemName: "person.circle"), profileLabel: "Profile")))

let ordersItem = SidebarItem(type: .orders(Orders(ordersIcon: UIImage(systemName: "cart"), ordersLabel: "Orders")))

let offerItem = SidebarItem(type: .offer(Offer(offerIcon: UIImage(systemName: "tag"), offerLabel: "Offer and Promo")))

let privacyItem = SidebarItem(type: .privacy(Privacy(privacyIcon: UIImage(systemName: "list.dash.header.rectangle"), privacyLabel: "Privacy")))

let securityItem = SidebarItem(type: .security(Security(securityIcon: UIImage(systemName: "shield.righthalf.filled"), securityLabel: "Security")))