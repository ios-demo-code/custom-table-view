//
//  DetailViewController.swift
//  Contact App Demo
//
//  Created by Soeng Saravit on 6/12/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var contactImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    var contact:Contact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        navigationItem.largeTitleDisplayMode = .never
        
        if contact != nil {
            nameLabel.text = contact?.name
            phoneNumberLabel.text = contact?.phoneNumber
            emailLabel.text = contact?.email
            addressLabel.text = contact?.address
            
            let url = URL(string: (contact?.image)!)
            let data = try! Data(contentsOf: url!)
            contactImageView.image = UIImage(data: data)
            
        }
    }

   
}
