//
//  MenuItem.swift
//  Menu
//
//  Created by Şakir Yılmaz ÖĞÜT on 4.03.2025.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var price: String
    var imageName: String
}
