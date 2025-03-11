//
//  MenuListRow.swift
//  Menu
//
//  Created by Şakir Yılmaz ÖĞÜT on 6.03.2025.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            
            Text(item.name)
                .fontWeight(.bold)
            
            Spacer()
            
            Text("$" + item.price)
        }
        .listRowSeparator(.hidden)
    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "Test Item", price: "3.99", imageName: "tako-sushi"))
}
