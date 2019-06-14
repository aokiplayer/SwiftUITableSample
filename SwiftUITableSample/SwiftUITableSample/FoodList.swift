import SwiftUI

struct FoodList : View {
    @ObjectBinding var foodDataSource = FoodDataSource()

    var body: some View {
        NavigationView {
            List(foodDataSource.foodData.identified(by: \.id)) { foodModel in
                    FoodRow(foodModel: foodModel)
                }
            .navigationBarTitle(Text("Food list"))
        }
    }
}

#if DEBUG
struct FoodList_Previews : PreviewProvider {
    static var previews: some View {
        FoodList()
    }
}
#endif
