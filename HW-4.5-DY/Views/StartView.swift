//
//  ContentView.swift
//  HW-4.5-DY
//
//  Created by Denis Yarets on 27/12/2023.
//

import SwiftUI

struct StartView: View {
    
    private let persons = Person.getData()
    
    var body: some View {
        
        TabView {
            ContactsView(persons: persons)
                .tabItem { Label("Contacts", systemImage: "person") }
            
            PhonesView(persons: persons)
                .tabItem { Label("Phones", systemImage: "phone") }
        }
        
    }
}

#Preview {
    StartView()
}
