//
//  DataManager.swift
//  ContactList
//
//  Created by roman Khilchenko on 29.08.2022.
//

import Foundation


class DataManager {
    let name: [String]
    let surname: [String]
    let phone: [String]
    let email: [String]
    
    init(name: [String], surname: [String], phone: [String], email: [String]) {
        self.name = name
        self.surname = surname
        self.phone = phone
        self.email = email
    }
    
}

let dataManager = DataManager(name: ["Alexey", "Ivan", "Roman",
                                     "Artem","Daniil", "Dmitriy",
                                     "Maksim", "Nikita","Pavel",
                                     "Petr", "Matvey", "Jhon"],
                              surname: ["Ivanov", "Efimov", "Khilchenko",
                                        "Volkov", "Morozov", "Lebedev",
                                        "Petrov", "Sokolov", "Semenov",
                                        "Egorov", "Kozlov", "Smirnov"],
                              phone: ["+79183900023", "89003494839", "+79183404567",
                                      "+79788419349","89189023043", "+79783204521",
                                      "+79182432134", "+79786306778", "89113402347",
                                      "89180432678", "+79780767890", "89003456234"],
                              email: ["big@yandex.ru", "small@yandex.ru",
                                      "large@yandex.ru", "$$$@hotmail.com",
                                      "bosco@yandex.ru", "gradient@yandex.ru",
                                      "bomb@yandex.ru", "city@yandex.ru",
                                      "purple@yandex.ru", "black@yandex.ru",
                                      "niko@yandex.ru", "apple@yandex.ru"])


