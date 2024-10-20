import SwiftUI

struct ContentView: View {

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                SecondaryNavBar()
                SwipeImage(imageCount: 5)
            }
        }
        .onAppear {
            print(constants.description)
        }
        
    }
}


#Preview {
    ContentView()
}
