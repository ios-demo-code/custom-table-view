//
//  ContactTableViewController.swift
//  Contact App Demo
//
//  Created by Soeng Saravit on 6/12/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    var contacts:[Contact]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        contacts = Contact.getContacts()
    
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (contacts?.count)!
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactcell", for: indexPath) as! ContactTableViewCell

        // Configure the cell...
        let contact = contacts![indexPath.row]
        cell.configureCell(contact: contact)

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let indexPath = tableView.indexPathForSelectedRow
            let contact = contacts![(indexPath?.row)!]
            
            let detail = segue.destination as! DetailViewController
            detail.contact = contact
        }
    }
    
 


}
