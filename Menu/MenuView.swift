//
//  ContentView.swift
//  Menu
//
//  Created by Şakir Yılmaz ÖĞÜT on 4.03.2025.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        
        List(menuItems) { item in
            
            MenuListRow(item: item)
            
        }
        .listStyle(.plain)
        .onAppear {
            menuItems = dataService.getData()
        }
    }
}

#Preview {
    MenuView()
}
