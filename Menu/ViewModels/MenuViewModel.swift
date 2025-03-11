import Foundation

class MenuViewModel: ObservableObject {
    @Published var menuItems: [MenuItem] = []
    private let dataService: DataService
    
    init(dataService: DataService = DataService()) {
        self.dataService = dataService
        loadMenuItems()
    }
    
    private func loadMenuItems() {
        menuItems = dataService.getData()
    }
} 
