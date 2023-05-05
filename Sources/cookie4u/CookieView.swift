import SwiftUI

public struct CookieView: View {
    @ObservedObject var model = CookieViewModel()
    let title: String
    let message: String
    let refreshable: Bool
    
    public init(title: String, message: String, refreshable: Bool = false) {
        self.title = title
        self.message = message
        self.refreshable = refreshable
    }
    
    public var body: some View {
        VStack {
            Text("Here is your")
                .font(.largeTitle)
                .padding(.top, 50)
            
            Text("\(model.cookie.name.capitalized) cookie")
                .font(.largeTitle)
            
            Spacer()
            
            model.cookie.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            
            Spacer()
            
            Text("Enjoy it!")
                .font(.headline)
                .padding(.bottom, 16)
            
            if refreshable {
                Button("Give me another one, please") {
                    model.refresh()
                }
                .padding(.bottom, 32)
            }
        }
    }
}
