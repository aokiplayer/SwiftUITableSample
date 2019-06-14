import SwiftUI

struct FoodRow : View {
    var foodModel: FoodModel

    var body: some View {
        VStack(alignment: .leading) {
            Image(foodModel.imageName)
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
                .shadow(radius: 10)
                .border(Color.white, width: 2)

            Text(foodModel.title).font(.headline)

            HStack {
                Text(foodModel.userName).font(.subheadline)
                Spacer()
                Image(foodModel.liked ? "liked" : "unliked")
            }
        }.padding()
    }
}

#if DEBUG
struct FoodRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {
//            FoodRow(foodModel: foodData[0])
//            FoodRow(foodModel: foodData[1])
            FoodRow(foodModel: FoodModel(id: 10, title: "Ramen", userName: "Jiro Yamada", imageName: "5"))
        }.previewLayout(.fixed(width: 300, height: 400))
    }
}
#endif
