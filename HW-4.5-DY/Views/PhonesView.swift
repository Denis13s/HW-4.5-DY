//
//  PhonesView.swift
//  HW-4.5-DY
//
//  Created by Denis Yarets on 27/12/2023.
//

import SwiftUI

struct PhonesView: View {
    
    let persons: [Person]
    
    var body: some View {
        
        NavigationStack {
            List(persons) { person in
                
                Section {
                    ContactSectionView(image: "phone", title: person.phone)
                    ContactSectionView(image: "note", title: person.email)
                } header: {
                    Text(person.fullName)
                }

            }
            .listStyle(.plain)
            .navigationTitle("Phone List")
        }
        
    }
}

#Preview {
    PhonesView(persons: Person.getData())
}
