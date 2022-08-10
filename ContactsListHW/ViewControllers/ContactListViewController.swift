//
//  ContactListViewController.swift
//  ContactsListHW
//
//  Created by Александр Соболев on 08.08.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var persons: [Person] = []

        // MARK: - Table view data source
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            persons.count
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            var content = cell.defaultContentConfiguration()
            let person = persons[indexPath.row]
            
            content.text = person.fullName
            cell.contentConfiguration = content
            
            return cell
        }

        // MARK: - Navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let indexPath = tableView.indexPathForSelectedRow {
                let detailVC = segue.destination as! ContactDetailsViewController
                detailVC.person = persons[indexPath.row]
            }
        }
    }
