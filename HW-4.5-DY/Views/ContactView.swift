//
//  ContactView.swift
//  HW-4.5-DY
//
//  Created by Denis Yarets on 27/12/2023.
//

import SwiftUI

struct ContactView: View {
    
    let person: Person
    
    var body: some View {
        
        VStack {
            Group {
                VStack(spacing: 10) {
                    Image(systemName: "person.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                    
                    Divider()
                    
                    ContactSectionView(image: "phone", title: person.phone)
                    
                    Divider()
                    
                    ContactSectionView(image: "note", title: person.email)
                }
                .padding(30)
            }
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding()
            
            Spacer()
        }
        .navigationTitle(person.fullName)
        .background(.gray.opacity(0.2))
        
    }
}

#Preview {
    ContactView(person: Person.getData()[0])
}

