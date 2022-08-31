//
//  ViewController.swift
//  ContactList
//
//  Created by roman Khilchenko on 29.08.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var personModel = Person.getPerson()
    
    //MARK: - TableView DataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personModel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactName", for: indexPath)
        let person = personModel[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let ditailVc = segue.destination as? DetailContactInformationViewController else { return }
        guard let index = tableView.indexPathForSelectedRow else { return }
        let person = personModel[index.row]
        ditailVc.personModel = person
    }
    
}



