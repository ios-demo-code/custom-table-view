//
//  ContactTableViewCell.swift
//  Contact App Demo
//
//  Created by Soeng Saravit on 6/12/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    @IBOutlet weak var contactImageView: UIImageView!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var nameContactLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(contact: Contact) {
        nameContactLabel.text = contact.name
        phoneNumberLabel.text = contact.phoneNumber
        
        let url = URL(string: contact.image!)
        let data = try! Data(contentsOf: url!)
        contactImageView.image = UIImage(data: data)
    }

}
