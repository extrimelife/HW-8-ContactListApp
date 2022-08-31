//
//  DitailInformationViewController.swift
//  ContactList
//
//  Created by roman Khilchenko on 30.08.2022.
//

import UIKit

class DetailContactInformationViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var personModel: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = personModel.fullName
        phoneLabel.text = "Phone: \(personModel.phone)"
        emailLabel.text = "Email: \(personModel.email)"
    }
}
