//
//  ContactSharedView.swift
//  HW-4.5-DY
//
//  Created by Denis Yarets on 27/12/2023.
//

import SwiftUI

struct ContactSectionView: View {
    
    let image: String
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundStyle(.blue)
            Text(title)
            
            Spacer()
        }
    }
}


//#Preview {
//    ContactSectionView(image: <#String#>, title: <#String#>)
//}
