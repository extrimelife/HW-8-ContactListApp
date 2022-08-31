//
//  personModel.swift
//  ContactList
//
//  Created by roman Khilchenko on 29.08.2022.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var phone: String
    var email: String
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        let names = dataManager.name.shuffled()
        let surnames = dataManager.surname.shuffled()
        let phone = dataManager.phone.shuffled()
        let email = dataManager.email.shuffled()
        
        for index in 0..<names.count {
            let person = Person(name: names[index], surname: surnames[index], phone: phone[index], email: email[index])
            persons.append(person)
        }
        return persons
    }
}
