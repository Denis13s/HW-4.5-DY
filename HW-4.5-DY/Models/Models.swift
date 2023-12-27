//
//  Models.swift
//  HW-4.5-DY
//
//  Created by Denis Yarets on 27/12/2023.
//

import Foundation

struct Person: Identifiable {
    
    let id = UUID()
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getData() -> [Person] {
        
        var persons = [Person]()
        let dataStore = DataStore.shared
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phones = dataStore.phones.shuffled()
        
        let iterations = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterations {
            persons.append(Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]))
        }
        
        return persons
    }
    
}
