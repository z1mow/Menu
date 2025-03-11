//
//  MenuView.swift
//  Menu
//
//  Created by Şakir Yılmaz ÖĞÜT on 4.03.2025.
//

import SwiftUI

struct MenuView: View {
    @StateObject private var viewModel = MenuViewModel()
    
    var body: some View {
        List(viewModel.menuItems) { item in
            MenuListRow(item: item)
        }
    }
}

#Preview {
    MenuView()
}
