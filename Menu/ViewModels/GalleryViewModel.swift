import Foundation
import SwiftUI
import PhotosUI

class GalleryViewModel: ObservableObject {
    @Published var selectedPhotos: [PhotosPickerItem] = []
    @Published var displayedImages: [Image] = []
    
    func loadImages() {
        // Image loading logic here
    }
    
    func addNewPhotos(_ photos: [PhotosPickerItem]) {
        selectedPhotos = photos
        loadImages()
    }
} 