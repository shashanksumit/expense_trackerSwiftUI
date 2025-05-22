//
//  UIExtension.swift
//  ExpenseTracker
//
//  Created by Shashank Singh on 22/05/25.
//

import SwiftUI

enum Inter: String {
    case regular = "Inter-Regular"
    case medium = "Inter-Medium"
    case bold = "Inter-Bold"
    case semiBold = "Inter-SemiBold"
}

extension Font {
    static func customFont(_ font: Inter, fontSize: CGFloat = 17) -> Font {
        custom(font.rawValue, size: fontSize)
    }
}

extension CGFloat {
    static var screenWidth: Double {
        return UIScreen.main.bounds.size.width
    }
    
    static var screenHeight: Double {
        return UIScreen.main.bounds.size.height
    }
    
    static func widthPer(per: Double) -> Double {
        return screenWidth * per
    }
    
    static func heightPer(per: Double) -> Double {
        return screenHeight * per
    }
    
    static var topInset: Double {
        if let keyWindow = UIApplication.shared.keyWindow{
            return keyWindow.safeAreaInsets.top
        }
        return 0
    }
    
    static var bottomInset: Double {
        if let keyWindow = UIApplication.shared.keyWindow{
            return keyWindow.safeAreaInsets.bottom
        }
        return 0
    }
    
    static var horizontalInset: Double {
        if let keyWindow = UIApplication.shared.keyWindow{
            return keyWindow.safeAreaInsets.left + keyWindow.safeAreaInsets.right
        }
        return 0
    }
    
    static var VerticalInset: Double {
        if let keyWindow = UIApplication.shared.keyWindow{
            return keyWindow.safeAreaInsets.top + keyWindow.safeAreaInsets.bottom
        }
        return 0
    }
}

extension Color {
    
    static var Primary: Color {
        return Color(hex: "5E00F5")
    }
    
    static var Primary500: Color {
        return Color(hex: "7722FF")
    }
    static var Primary20: Color {
        return Color(hex: "924EFF")
    }
    static var Primary10: Color {
        return Color(hex: "AD78FF")
    }
    static var Primary5: Color {
        return Color(hex: "C9A7FF")
    }
    static var Primary0: Color {
        return Color(hex: "E4D3FF")
    }
    
    static var secondaryC: Color {
        return Color(hex: "FF7966")
    }
    static var secondaryC50: Color {
        return Color(hex: "FFA699")
    }
    static var secondaryC0: Color {
        return Color(hex: "FFD2CC")
    }
    
    static var grayC: Color {
        return Color(hex: "0EFAD9")
    }
    static var secondaryG: Color {
        return Color(hex: "0E0E12")
    }
    static var secondaryG50: Color {
        return Color(hex: "7DFFEE")
    }
    
    static var gray80: Color {
        return Color(hex: "1C1C23")
    }
    static var gray70: Color {
        return Color(hex: "353542")
    }
    static var gray60: Color {
        return Color(hex: "4E4E61")
    }
    static var gray50: Color {
        return Color(hex: "666680")
    }
    static var gray40: Color {
        return Color(hex: "83839C")
    }
    static var gray30: Color {
        return Color(hex: "A2A2B5")
    }
    static var gray20: Color {
        return Color(hex: "C1C1CD")
    }
    static var gray10: Color {
        return Color(hex: "E0E0E6")
    }
    
    static var primaryText: Color {
        return Color.white
    }
    
    static var secondaryText: Color {
        return .gray60
    }
    
    init (hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
            case 3: // RGB 12-bit
                (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
            case 6: // RGB 24-bit
                (a, r, g, b) = (255, int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF)
            case 8:
                (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
            default:
                (a, r, g, b) = (1, 1, 1, 0)
        }
        
        let red = Double(r) / 255
        let green = Double(g) / 255
        let blue = Double(b) / 255
        let alpha = Double(a) / 255

        self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
    }
}
