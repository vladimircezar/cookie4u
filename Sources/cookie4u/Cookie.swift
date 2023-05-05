import Foundation
import SwiftUI

enum Cookie: String, CaseIterable {
    case heartChocolate = "heart-chocolate"
    case macaron = "macaron"
    case roundChocolateBits = "round-chocolate-bits"
    case roundChocolateFestival = "round-chocolate-festival"
    case roundChocolateSpiral = "round-chocolate-spiral"
    case roundChocolate = "round-chocolate"
    case starCandy = "star-candy"
    case starCaramel = "star-caramel"
    case starLemon = "star-lemon"
    
    var name: String {
        switch self {
        case .heartChocolate: return "chocolate heart"
        case .macaron: return "macaron"
        case .roundChocolateBits: return "chocolate bits & pieces"
        case .roundChocolateFestival: return "chocolate festival"
        case .roundChocolateSpiral: return "chocolate spiral"
        case .roundChocolate: return "chocolate"
        case .starCandy: return "candy star"
        case .starCaramel: return "caramel star"
        case .starLemon: return "lemon star"
        }
    }
    
    var image: Image {
        return Image(self.rawValue)
    }

    static func random() -> Cookie {
        return allCases.randomElement()!
    }
}
