import Foundation

class CookieViewModel: ObservableObject {
    @Published var cookie = Cookie.random()
    
    func refresh() {
        cookie = Cookie.random()
    }
}
