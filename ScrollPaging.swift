import SwiftUI

struct ScrollViewPage : View {
    var body : some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                ForEach(0..<10) {
                    Text("Item \($0)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 200, height: 200)
                        .background(Color.red)
                }
            }
        }
    }
}

struct ScrollViewPage_Previews : PreviewProvider {
    static var previews: some View {
        ScrollViewPage()
    }
}
