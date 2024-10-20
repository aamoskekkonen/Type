import Foundation
import CoreGraphics
import SwiftUI

struct Constants: CustomStringConvertible {
    
    let screenWidth: Double
    let goldenRatio = 1.61803
    
    var sub1: Double { screenWidth / pow(goldenRatio, 1) }
    var sub2: Double { screenWidth / pow(goldenRatio, 2) }
    var sub3: Double { screenWidth / pow(goldenRatio, 3) }
    var sub4: Double { screenWidth / pow(goldenRatio, 4) }
    var sub5: Double { screenWidth / pow(goldenRatio, 5) }
    var sub6: Double { screenWidth / pow(goldenRatio, 6) }
    var sub7: Double { screenWidth / pow(goldenRatio, 7) }
    var sub8: Double { screenWidth / pow(goldenRatio, 8) }
    var sub9: Double { screenWidth / pow(goldenRatio, 9) }
    var sub10: Double { screenWidth / pow(goldenRatio, 10) }
    var sub11: Double { screenWidth / pow(goldenRatio, 11) }
    var sub12: Double { screenWidth / pow(goldenRatio, 12) }
    
    var cornerRadius: Double { sub7 }
    
    var highlightedText: Double { sub5 }
    var highlightedTextComplementText: Double { sub6 }
    var detailText: Double { sub6 }
    var chipText: Double { sub7 }
    
    var margin: Double { sub7 }
    
    var smallCircle: Double { sub5 }
    var mediumCircle: Double { sub4 }
    var largeCircle: Double { sub3 }
    
    var chipHeight: Double { sub6 }
    var smallChipWidth: Double { sub6 }
    var mediumChipWidth: Double { sub6 + sub8 }
    var largeChipWidth: Double { sub6 + sub7 }
    
    var dividerHeight: Double { sub1 }
    
    var imageIndexIndicatorHeight: Double { sub8 }
    
    var bottomNavHeight: Double { sub3 }
    
    var bottomNavIconSize: Double { sub6 + sub8 }
    var chipIconSize: Double { sub6 }
    
    func marginedSubsectionWidth(fullWidth: Double, subsectionCount: Int) -> Double {
        let totalMargin = (1.0 + Double(subsectionCount)) * margin
        let remainingWidth = fullWidth - totalMargin
        let subsectionWidth = remainingWidth / Double(subsectionCount)
        return subsectionWidth
    }
    
    var marginedWidth: Double { screenWidth - 2 * margin }
    var marginedHeightGR: Double { marginedWidth * goldenRatio }
    var marginedHeightSub1: Double { marginedWidth / pow(goldenRatio, 2) + marginedWidth }
    var marginedHeightSub2: Double { marginedWidth / pow(goldenRatio, 3) + marginedWidth }
    var marginedHeightSub3: Double { marginedWidth / pow(goldenRatio, 4) + marginedWidth }
    
    var margined2Width: Double { screenWidth - 3 * margin }
    var margined2HeightGR: Double { margined2Width * goldenRatio }
    var margined2HeightSub1: Double { margined2Width / pow(goldenRatio, 2) + margined2Width }
    var margined2HeightSub2: Double { margined2Width / pow(goldenRatio, 3) + margined2Width }
    var margined2HeightSub3: Double { margined2Width / pow(goldenRatio, 4) + margined2Width }
    
    var margined3Width: Double { screenWidth - 4 * margin }
    var margined3HeightGR: Double { margined3Width * goldenRatio }
    var margined3HeightSub1: Double { margined3Width / pow(goldenRatio, 2) + margined3Width }
    var margined3HeightSub2: Double { margined3Width / pow(goldenRatio, 3) + margined3Width }
    var margined3HeightSub3: Double { margined3Width / pow(goldenRatio, 4) + margined3Width }
    
    var primaryNavBarComplementHeight: Double { sub4 }
    var primaryNavBarComplementWidth: Double { margined2Width }
    
    let white = Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0)
    let light = Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.1)
    let dark = Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.3)
    let black = Color(Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 1.0))
    
    var description: String {
        return """
        screenWidth: \(screenWidth)
        Subs[1: \(sub1), 2: \(sub2), 3: \(sub3), 4: \(sub4), 5: \(sub5), 6: \(sub6), 7: \(sub7), 8: \(sub8), 9: \(sub9), 10: \(sub10), 11: \(sub11), 12: \(sub12)]
        smallCircle: \(smallCircle)
        """
    }
}

let constants = Constants(screenWidth: UIScreen.main.bounds.width)
