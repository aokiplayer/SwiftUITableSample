import Combine
import SwiftUI

class FoodDataSource: BindableObject {
    typealias PublisherType = PassthroughSubject
    
    let didChange: FoodDataSource.PublisherType = PassthroughSubject<Void, Never>()
    var foodData: [FoodModel]

    init() {
        foodData = [
            FoodModel(id: 10, title: "スープカレー", userName: "山田二郎", imageName: "1", liked: true),
            FoodModel(id: 20, title: "そば屋のカレー", userName: "川田吾郎", imageName: "2"),
            FoodModel(id: 30, title: "タイ風カレー", userName: "里田舞", imageName: "3", liked: true),
            FoodModel(id: 40, title: "スタミナジャンボカレー", userName: "海田泳七郎", imageName: "4"),
            FoodModel(id: 50, title: "レッドカレー", userName: "岡田八郎", imageName: "5")
        ]

        didChange.send(())
    }
}
