//
//  Contact.swift
//  Contact App Demo
//
//  Created by Soeng Saravit on 6/12/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import Foundation

class Contact {
    
    var name: String?
    var phoneNumber: String?
    var email: String?
    var address: String?
    var image: String?
    
    static func getContacts() -> [Contact] {
        var contacts:[Contact] = [Contact]()
        
        let contact1 = Contact()
        contact1.name = "Soeng Saravit"
        contact1.phoneNumber = "+855 96 929 9959"
        contact1.email = "soengsaravit@gmail.com"
        contact1.address = "Phnom Penh"
        contact1.image = "https://www.timeshighereducation.com/sites/default/files/byline_photos/default-avatar.png"
        
        let contact2 = Contact()
        contact2.name = "Long Dara"
        contact2.phoneNumber = "+855 12 388 888"
        contact2.email = "longdara@gmail.com"
        contact2.address = "Kandal"
        contact2.image = "https://www.timeshighereducation.com/sites/default/files/byline_photos/default-avatar.png"
        
        let contact3 = Contact()
        contact3.name = "Heng Lina"
        contact3.phoneNumber = "+855 90 999 838"
        contact3.email = "henglina@yahoo.com"
        contact3.address = "Siem Reap"
        contact3.image = "https://www.timeshighereducation.com/sites/default/files/byline_photos/default-avatar.png"
        
        contacts.append(contentsOf: [contact1, contact2, contact3])
        
        return contacts
        
        
    }
}
