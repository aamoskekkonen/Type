import SwiftUI

struct SwipeImage: View {
    let imageCount: Int
    @State var selectedImageIndex = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ZStack(alignment: .top) {
                Image("person\(selectedImageIndex + 1)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: constants.marginedWidth, height: constants.marginedHeightSub3)
                    .clipped()
                    .cornerRadius(constants.cornerRadius)
                ImageIndexIndicator(imageCount: imageCount, selectedIndex: selectedImageIndex)
                    .padding(.top, constants.margin)
            }
            .padding(.horizontal, constants.margin)
            HStack {
                Button(action: { selectedImageIndex = max(0, selectedImageIndex - 1)} , label: { Color.clear })
                Button(action: { selectedImageIndex = min(imageCount - 1, selectedImageIndex + 1)} , label: { Color.clear })
            }
            ActionButton(icon: "bookmark", action: {})
                .padding(constants.margin)
                .padding(.trailing, constants.margin)
        }
    }
}

private struct ImageIndexIndicator: View {
    var imageCount: Int
    let selectedIndex: Int
    var indicatorWidth: Double { constants.marginedSubsectionWidth(fullWidth: constants.marginedWidth, subsectionCount: imageCount)
    }
    
    var body: some View {
        HStack(spacing: constants.margin) {
                ForEach(0..<imageCount, id: \.self) { index in
                    Capsule()
                        .fill(index == selectedIndex ? constants.white : constants.black)
                        .frame(width: indicatorWidth,
                               height: constants.imageIndexIndicatorHeight
                        )
                }
            }
    }
}

#Preview {
    SwipeImage(imageCount: 7)
}
