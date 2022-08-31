//
//  TabBarViewController.swift
//  ContactList
//
//  Created by roman Khilchenko on 30.08.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
     var personModel = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableViewControllers(personModel)
    }
    
    private func setupTableViewControllers(_ person: [Person]) {
        guard let contactListVs = viewControllers?.first as? ContactListViewController else { return }
        guard let secondContactVc = viewControllers?.last as? SecondContactListViewController else { return }
        contactListVs.personModel = person
        secondContactVc.personModel = person
    }
    
}



