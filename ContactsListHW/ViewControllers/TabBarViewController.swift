//
//  TabBarViewController.swift
//  ContactsListHW
//
//  Created by Александр Соболев on 08.08.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let persons = Person.getContactList()
        let contactListVC = viewControllers?.first as! ContactListViewController
        let sectionVC = viewControllers?.last as! SectionTableViewController
        
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
}

