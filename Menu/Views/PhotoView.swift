//
//  PhotoView.swift
//  Menu
//
//  Created by Şakir Yılmaz ÖĞÜT on 7.03.2025.
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var selectedPhoto: String
    @Binding var sheetVisible: Bool
    
    var body: some View {
        ZStack {
            Image(selectedPhoto)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                HStack {
                    Spacer()
                    Button {
                        sheetVisible.toggle()
                    } label: {
                        Image(systemName: "x.circle")
                            .scaleEffect(2)
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                Spacer()
            }
            
        }
        
    }
}

#Preview {
    PhotoView(selectedPhoto: Binding.constant("gallery3"),
              sheetVisible: Binding.constant(true))
}
