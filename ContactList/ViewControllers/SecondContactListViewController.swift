//
//  MoreInformationListTableViewController.swift
//  ContactList
//
//  Created by roman Khilchenko on 30.08.2022.
//

import UIKit

class SecondContactListViewController: UITableViewController {
    
    var personModel = Person.getPerson()
    
    
    // MARK: - Tableview data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personModel.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return personModel[section].fullName
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "moreInfo", for: indexPath)
        let person = personModel[indexPath.section]
        var content = cell.defaultContentConfiguration()
        switch indexPath.row {
        case 0:
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        default:
            content.secondaryText = person.email
            content.image = UIImage(systemName: "tray")
        }
        cell.contentConfiguration = content
        return cell
    }
    
    //MARK: - TableView Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
