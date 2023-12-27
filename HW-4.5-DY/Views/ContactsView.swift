//
//  ContactsView.swift
//  HW-4.5-DY
//
//  Created by Denis Yarets on 27/12/2023.
//

import SwiftUI

struct ContactsView: View {
    
    let persons: [Person]
    
    var body: some View {
        
        NavigationStack {
            List(persons) { person in
                NavigationLink {
                    ContactView(person: person)
                } label: {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
        
    }
}

#Preview {
    ContactsView(persons: Person.getData())
}
