import Foundation

struct FoodModel: Codable {
    var id: Int
    var title: String
    var userName: String
    var imageName: String
    var liked: Bool = false
}
