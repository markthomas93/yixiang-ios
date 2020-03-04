import SwiftUI

struct ScrollViewPage : View {
    @State var position : CGFloat = 0;
    
    var body : some View {
        GeometryReader { geometry in
            VStack {
                Text("\(self.position)")
                    .frame(width: 50, height: 30)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 50) {
                            Text("a")
                        ContentView().frame(width: geometry.size.width, height: 704)
                    }
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
