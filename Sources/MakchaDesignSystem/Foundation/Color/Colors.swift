

//
//	color.swift
//	Coffee Factory
//
//	Created by YunCoffee on 2024. 5. 4.
//

import Foundation
import SwiftUI

public extension Color {
    // 구조체(폴더 기반) 생성
    // 구조체의 멤버 변수로 색상 넣기
    // 색상 raw이름을 이름으로 가져가야할듯
    static func cf(_ name: CFColor) -> Color {
        name.color
    }
}

public enum CFColor {
	case primaryScale(CFPrimaryScale)
	case shadow(CFShadow)
	case grayScale(CFGrayScale)
	case utils(CFUtils)
	case colorScale(CFColorScale)

    public var color: Color {
        switch self {
		case .primaryScale(let cfColor):
			Color(cfColor.rawValue, bundle: Bundle.module)
		case .shadow(let cfColor):
			Color(cfColor.rawValue, bundle: Bundle.module)
		case .grayScale(let cfColor):
			Color(cfColor.rawValue, bundle: Bundle.module)
		case .utils(let cfColor):
			Color(cfColor.rawValue, bundle: Bundle.module)
		case .colorScale(let cfColor):
			Color(cfColor.rawValue, bundle: Bundle.module)

        }
    }
}

public enum CFPrimaryScale {
	case secondary(CFPrimaryScaleSecondary)
	case tertiary(CFPrimaryScaleTertiary)
	case primary(CFPrimaryScalePrimary)

	var rawValue: String {
    switch self {
	case .secondary(let cfColor):
		cfColor.rawValue
	case .tertiary(let cfColor):
		cfColor.rawValue
	case .primary(let cfColor):
		cfColor.rawValue
    	}
	}

}

public enum CFColorScale {
	case limeGreen(CFColorScaleLimeGreen)
	case green(CFColorScaleGreen)
	case olive(CFColorScaleOlive)
	case purple(CFColorScalePurple)
	case fuchsia(CFColorScaleFuchsia)
	case blue(CFColorScaleBlue)
	case yellow(CFColorScaleYellow)
	case red(CFColorScaleRed)
	case royalBlue(CFColorScaleRoyalBlue)
	case navy(CFColorScaleNavy)
	case lavender(CFColorScaleLavender)
	case orange(CFColorScaleOrange)
	case teal(CFColorScaleTeal)
	case pink(CFColorScalePink)
	case blueViolet(CFColorScaleBlueViolet)
	case darkRed(CFColorScaleDarkRed)

	var rawValue: String {
    switch self {
	case .limeGreen(let cfColor):
		cfColor.rawValue
	case .green(let cfColor):
		cfColor.rawValue
	case .olive(let cfColor):
		cfColor.rawValue
	case .purple(let cfColor):
		cfColor.rawValue
	case .fuchsia(let cfColor):
		cfColor.rawValue
	case .blue(let cfColor):
		cfColor.rawValue
	case .yellow(let cfColor):
		cfColor.rawValue
	case .red(let cfColor):
		cfColor.rawValue
	case .royalBlue(let cfColor):
		cfColor.rawValue
	case .navy(let cfColor):
		cfColor.rawValue
	case .lavender(let cfColor):
		cfColor.rawValue
	case .orange(let cfColor):
		cfColor.rawValue
	case .teal(let cfColor):
		cfColor.rawValue
	case .pink(let cfColor):
		cfColor.rawValue
	case .blueViolet(let cfColor):
		cfColor.rawValue
	case .darkRed(let cfColor):
		cfColor.rawValue
    	}
	}

}


public enum CFPrimaryScaleSecondary: String {
	/// r: 242, g: 221, b: 193, a: 1.000
	case brightest = "primaryScaleSecondaryBrightest"
	/// r: 238, g: 205, b: 160, a: 1.000
	case lightest = "primaryScaleSecondaryLightest"
	/// r: 234, g: 193, b: 138, a: 1.000
	case lighter = "primaryScaleSecondaryLighter"
	/// r: 230, g: 181, b: 115, a: 1.000
	case light = "primaryScaleSecondaryLight"
	/// r: 226, g: 169, b: 94, a: 1.000
	case mediumLight = "primaryScaleSecondaryMediumLight"
	/// r: 222, g: 158, b: 72, a: 1.000
	case medium = "primaryScaleSecondaryMedium"
	/// r: 218, g: 147, b: 50, a: 1.000
	case mediumDark = "primaryScaleSecondaryMediumDark"
	/// r: 206, g: 134, b: 37, a: 1.000
	case dark = "primaryScaleSecondaryDark"
	/// r: 184, g: 120, b: 33, a: 1.000
	case darker = "primaryScaleSecondaryDarker"
	/// r: 156, g: 106, b: 37, a: 1.000
	case darkest = "primaryScaleSecondaryDarkest"

}

public enum CFColorScaleLimeGreen: String {
	/// r: 243, g: 252, b: 243, a: 1.000
	case brightest = "colorScaleLimeGreenBrightest"
	/// r: 214, g: 245, b: 214, a: 1.000
	case lightest = "colorScaleLimeGreenLightest"
	/// r: 173, g: 235, b: 173, a: 1.000
	case lighter = "colorScaleLimeGreenLighter"
	/// r: 132, g: 225, b: 132, a: 1.000
	case light = "colorScaleLimeGreenLight"
	/// r: 91, g: 215, b: 91, a: 1.000
	case mediumLight = "colorScaleLimeGreenMediumLight"
	/// r: 50, g: 205, b: 50, a: 1.000
	case medium = "colorScaleLimeGreenMedium"
	/// r: 31, g: 173, b: 31, a: 1.000
	case mediumDark = "colorScaleLimeGreenMediumDark"
	/// r: 30, g: 123, b: 30, a: 1.000
	case dark = "colorScaleLimeGreenDark"
	/// r: 20, g: 82, b: 20, a: 1.000
	case darker = "colorScaleLimeGreenDarker"
	/// r: 10, g: 41, b: 10, a: 1.000
	case darkest = "colorScaleLimeGreenDarkest"

}

public enum CFShadow: String {
	/// r: 0, g: 0, b: 0, a: 0.000
	case none = "shadowNone"
	/// r: 0, g: 0, b: 0, a: 0.250
	case base = "shadowBase"

}

public enum CFColorScaleGreen: String {
	/// r: 238, g: 247, b: 238, a: 1.000
	case brightest = "colorScaleGreenBrightest"
	/// r: 204, g: 230, b: 204, a: 1.000
	case lightest = "colorScaleGreenLightest"
	/// r: 153, g: 204, b: 153, a: 1.000
	case lighter = "colorScaleGreenLighter"
	/// r: 102, g: 179, b: 102, a: 1.000
	case light = "colorScaleGreenLight"
	/// r: 51, g: 153, b: 51, a: 1.000
	case mediumLight = "colorScaleGreenMediumLight"
	/// r: 0, g: 128, b: 0, a: 1.000
	case medium = "colorScaleGreenMedium"
	/// r: 0, g: 102, b: 0, a: 1.000
	case mediumDark = "colorScaleGreenMediumDark"
	/// r: 0, g: 77, b: 0, a: 1.000
	case dark = "colorScaleGreenDark"
	/// r: 0, g: 51, b: 0, a: 1.000
	case darker = "colorScaleGreenDarker"
	/// r: 0, g: 26, b: 0, a: 1.000
	case darkest = "colorScaleGreenDarkest"

}

public enum CFColorScaleOlive: String {
	/// r: 248, g: 248, b: 237, a: 1.000
	case brightest = "colorScaleOliveBrightest"
	/// r: 235, g: 235, b: 204, a: 1.000
	case lightest = "colorScaleOliveLightest"
	/// r: 214, g: 214, b: 153, a: 1.000
	case lighter = "colorScaleOliveLighter"
	/// r: 194, g: 194, b: 102, a: 1.000
	case light = "colorScaleOliveLight"
	/// r: 173, g: 173, b: 51, a: 1.000
	case mediumLight = "colorScaleOliveMediumLight"
	/// r: 153, g: 153, b: 0, a: 1.000
	case medium = "colorScaleOliveMedium"
	/// r: 122, g: 122, b: 0, a: 1.000
	case mediumDark = "colorScaleOliveMediumDark"
	/// r: 92, g: 92, b: 0, a: 1.000
	case dark = "colorScaleOliveDark"
	/// r: 61, g: 61, b: 0, a: 1.000
	case darker = "colorScaleOliveDarker"
	/// r: 31, g: 31, b: 0, a: 1.000
	case darkest = "colorScaleOliveDarkest"

}

public enum CFUtilsDisabled: String {
	/// r: 196, g: 196, b: 196, a: 1.000
	case base = "utilsDisabledBase"
	/// r: 235, g: 235, b: 235, a: 1.000
	case light = "utilsDisabledLight"

}

public enum CFColorScalePurple: String {
	/// r: 245, g: 238, b: 247, a: 1.000
	case brightest = "colorScalePurpleBrightest"
	/// r: 225, g: 204, b: 230, a: 1.000
	case lightest = "colorScalePurpleLightest"
	/// r: 196, g: 153, b: 204, a: 1.000
	case lighter = "colorScalePurpleLighter"
	/// r: 166, g: 102, b: 179, a: 1.000
	case light = "colorScalePurpleLight"
	/// r: 137, g: 51, b: 153, a: 1.000
	case mediumLight = "colorScalePurpleMediumLight"
	/// r: 107, g: 0, b: 128, a: 1.000
	case medium = "colorScalePurpleMedium"
	/// r: 86, g: 0, b: 102, a: 1.000
	case mediumDark = "colorScalePurpleMediumDark"
	/// r: 64, g: 0, b: 77, a: 1.000
	case dark = "colorScalePurpleDark"
	/// r: 43, g: 0, b: 51, a: 1.000
	case darker = "colorScalePurpleDarker"
	/// r: 21, g: 0, b: 26, a: 1.000
	case darkest = "colorScalePurpleDarkest"

}

public enum CFColorScaleFuchsia: String {
	/// r: 253, g: 242, b: 253, a: 1.000
	case brightest = "colorScaleFuchsiaBrightest"
	/// r: 249, g: 209, b: 249, a: 1.000
	case lightest = "colorScaleFuchsiaLightest"
	/// r: 242, g: 163, b: 242, a: 1.000
	case lighter = "colorScaleFuchsiaLighter"
	/// r: 236, g: 117, b: 236, a: 1.000
	case light = "colorScaleFuchsiaLight"
	/// r: 229, g: 71, b: 229, a: 1.000
	case mediumLight = "colorScaleFuchsiaMediumLight"
	/// r: 223, g: 25, b: 223, a: 1.000
	case medium = "colorScaleFuchsiaMedium"
	/// r: 178, g: 20, b: 178, a: 1.000
	case mediumDark = "colorScaleFuchsiaMediumDark"
	/// r: 134, g: 15, b: 134, a: 1.000
	case dark = "colorScaleFuchsiaDark"
	/// r: 89, g: 10, b: 89, a: 1.000
	case darker = "colorScaleFuchsiaDarker"
	/// r: 45, g: 5, b: 45, a: 1.000
	case darkest = "colorScaleFuchsiaDarkest"

}

public enum CFGrayScale: String {
	/// r: 255, g: 255, b: 255, a: 1.000
	case white = "grayScale0White"
	/// r: 248, g: 248, b: 248, a: 1.000
	case gray50 = "grayScale50"
	/// r: 246, g: 246, b: 246, a: 1.000
	case gray100 = "grayScale100"
	/// r: 235, g: 235, b: 235, a: 1.000
	case gray200 = "grayScale200"
	/// r: 224, g: 224, b: 224, a: 1.000
	case gray300 = "grayScale300"
	/// r: 212, g: 212, b: 212, a: 1.000
	case gray400 = "grayScale400"
	/// r: 196, g: 196, b: 196, a: 1.000
	case gray500 = "grayScale500"
	/// r: 134, g: 134, b: 134, a: 1.000
	case gray600 = "grayScale600"
	/// r: 98, g: 98, b: 98, a: 1.000
	case gray700 = "grayScale700"
	/// r: 66, g: 66, b: 66, a: 1.000
	case gray800 = "grayScale800"
	/// r: 51, g: 51, b: 51, a: 1.000
	case gray900 = "grayScale900"
	/// r: 43, g: 43, b: 43, a: 1.000
	case black = "grayScale1000Black"

}
public enum CFColorScaleBlue: String {
	/// r: 240, g: 243, b: 255, a: 1.000
	case brightest = "colorScaleBlueBrightest"
	/// r: 210, g: 220, b: 254, a: 1.000
	case lightest = "colorScaleBlueLightest"
	/// r: 164, g: 184, b: 254, a: 1.000
	case lighter = "colorScaleBlueLighter"
	/// r: 119, g: 149, b: 253, a: 1.000
	case light = "colorScaleBlueLight"
	/// r: 73, g: 113, b: 253, a: 1.000
	case mediumLight = "colorScaleBlueMediumLight"
	/// r: 28, g: 78, b: 252, a: 1.000
	case medium = "colorScaleBlueMedium"
	/// r: 22, g: 62, b: 202, a: 1.000
	case mediumDark = "colorScaleBlueMediumDark"
	/// r: 17, g: 47, b: 151, a: 1.000
	case dark = "colorScaleBlueDark"
	/// r: 11, g: 31, b: 101, a: 1.000
	case darker = "colorScaleBlueDarker"
	/// r: 6, g: 16, b: 50, a: 1.000
	case darkest = "colorScaleBlueDarkest"

}

public enum CFColorScaleYellow: String {
	/// r: 255, g: 251, b: 229, a: 1.000
	case brightest = "colorScaleYellowBrightest"
	/// r: 255, g: 246, b: 204, a: 1.000
	case lightest = "colorScaleYellowLightest"
	/// r: 255, g: 238, b: 153, a: 1.000
	case lighter = "colorScaleYellowLighter"
	/// r: 255, g: 229, b: 102, a: 1.000
	case light = "colorScaleYellowLight"
	/// r: 255, g: 221, b: 51, a: 1.000
	case mediumLight = "colorScaleYellowMediumLight"
	/// r: 255, g: 212, b: 0, a: 1.000
	case medium = "colorScaleYellowMedium"
	/// r: 214, g: 171, b: 0, a: 1.000
	case mediumDark = "colorScaleYellowMediumDark"
	/// r: 163, g: 133, b: 0, a: 1.000
	case dark = "colorScaleYellowDark"
	/// r: 107, g: 87, b: 0, a: 1.000
	case darker = "colorScaleYellowDarker"
	/// r: 51, g: 42, b: 0, a: 1.000
	case darkest = "colorScaleYellowDarkest"

}

public enum CFColorScaleRed: String {
	/// r: 254, g: 241, b: 241, a: 1.000
	case brightest = "colorScaleRedBrightest"
	/// r: 252, g: 204, b: 204, a: 1.000
	case lightest = "colorScaleRedLightest"
	/// r: 248, g: 153, b: 153, a: 1.000
	case lighter = "colorScaleRedLighter"
	/// r: 245, g: 102, b: 102, a: 1.000
	case light = "colorScaleRedLight"
	/// r: 242, g: 59, b: 59, a: 1.000
	case mediumLight = "colorScaleRedMediumLight"
	/// r: 238, g: 0, b: 0, a: 1.000
	case medium = "colorScaleRedMedium"
	/// r: 205, g: 4, b: 4, a: 1.000
	case mediumDark = "colorScaleRedMediumDark"
	/// r: 143, g: 0, b: 0, a: 1.000
	case dark = "colorScaleRedDark"
	/// r: 95, g: 0, b: 0, a: 1.000
	case darker = "colorScaleRedDarker"
	/// r: 48, g: 0, b: 0, a: 1.000
	case darkest = "colorScaleRedDarkest"

}

public enum CFColorScaleRoyalBlue: String {
	/// r: 235, g: 245, b: 255, a: 1.000
	case brightest = "colorScaleRoyalBlueBrightest"
	/// r: 199, g: 227, b: 255, a: 1.000
	case lightest = "colorScaleRoyalBlueLightest"
	/// r: 143, g: 200, b: 255, a: 1.000
	case lighter = "colorScaleRoyalBlueLighter"
	/// r: 86, g: 172, b: 255, a: 1.000
	case light = "colorScaleRoyalBlueLight"
	/// r: 30, g: 144, b: 255, a: 1.000
	case mediumLight = "colorScaleRoyalBlueMediumLight"
	/// r: 0, g: 116, b: 229, a: 1.000
	case medium = "colorScaleRoyalBlueMedium"
	/// r: 0, g: 86, b: 170, a: 1.000
	case mediumDark = "colorScaleRoyalBlueMediumDark"
	/// r: 0, g: 64, b: 127, a: 1.000
	case dark = "colorScaleRoyalBlueDark"
	/// r: 0, g: 43, b: 85, a: 1.000
	case darker = "colorScaleRoyalBlueDarker"
	/// r: 0, g: 21, b: 42, a: 1.000
	case darkest = "colorScaleRoyalBlueDarkest"

}

public enum CFColorScaleNavy: String {
	/// r: 241, g: 241, b: 249, a: 1.000
	case brightest = "colorScaleNavyBrightest"
	/// r: 211, g: 213, b: 237, a: 1.000
	case lightest = "colorScaleNavyLightest"
	/// r: 167, g: 171, b: 218, a: 1.000
	case lighter = "colorScaleNavyLighter"
	/// r: 123, g: 130, b: 200, a: 1.000
	case light = "colorScaleNavyLight"
	/// r: 79, g: 88, b: 181, a: 1.000
	case mediumLight = "colorScaleNavyMediumLight"
	/// r: 35, g: 46, b: 163, a: 1.000
	case medium = "colorScaleNavyMedium"
	/// r: 28, g: 37, b: 130, a: 1.000
	case mediumDark = "colorScaleNavyMediumDark"
	/// r: 21, g: 28, b: 98, a: 1.000
	case dark = "colorScaleNavyDark"
	/// r: 14, g: 18, b: 65, a: 1.000
	case darker = "colorScaleNavyDarker"
	/// r: 7, g: 9, b: 33, a: 1.000
	case darkest = "colorScaleNavyDarkest"

}

public enum CFColorScaleLavender: String {
	/// r: 237, g: 235, b: 250, a: 1.000
	case brightest = "colorScaleLavenderBrightest"
	/// r: 218, g: 214, b: 245, a: 1.000
	case lightest = "colorScaleLavenderLightest"
	/// r: 182, g: 173, b: 235, a: 1.000
	case lighter = "colorScaleLavenderLighter"
	/// r: 145, g: 133, b: 224, a: 1.000
	case light = "colorScaleLavenderLight"
	/// r: 109, g: 92, b: 214, a: 1.000
	case mediumLight = "colorScaleLavenderMediumLight"
	/// r: 72, g: 51, b: 204, a: 1.000
	case medium = "colorScaleLavenderMedium"
	/// r: 58, g: 41, b: 163, a: 1.000
	case mediumDark = "colorScaleLavenderMediumDark"
	/// r: 43, g: 31, b: 122, a: 1.000
	case dark = "colorScaleLavenderDark"
	/// r: 29, g: 20, b: 82, a: 1.000
	case darker = "colorScaleLavenderDarker"
	/// r: 14, g: 10, b: 41, a: 1.000
	case darkest = "colorScaleLavenderDarkest"

}

public enum CFPrimaryScaleTertiary: String {
	/// r: 254, g: 253, b: 251, a: 1.000
	case brightest = "primaryScaleTertiaryBrightest"
	/// r: 249, g: 246, b: 235, a: 1.000
	case lightest = "primaryScaleTertiaryLightest"
	/// r: 243, g: 241, b: 221, a: 1.000
	case lighter = "primaryScaleTertiaryLighter"
	/// r: 238, g: 235, b: 205, a: 1.000
	case light = "primaryScaleTertiaryLight"
	/// r: 235, g: 232, b: 198, a: 1.000
	case mediumLight = "primaryScaleTertiaryMediumLight"
	/// r: 233, g: 229, b: 191, a: 1.000
	case medium = "primaryScaleTertiaryMedium"
	/// r: 230, g: 226, b: 183, a: 1.000
	case mediumDark = "primaryScaleTertiaryMediumDark"
	/// r: 227, g: 222, b: 176, a: 1.000
	case dark = "primaryScaleTertiaryDark"
	/// r: 222, g: 217, b: 160, a: 1.000
	case darker = "primaryScaleTertiaryDarker"
	/// r: 217, g: 211, b: 145, a: 1.000
	case darkest = "primaryScaleTertiaryDarkest"

}

public enum CFColorScaleOrange: String {
	/// r: 255, g: 244, b: 240, a: 1.000
	case brightest = "colorScaleOrangeBrightest"
	/// r: 255, g: 218, b: 204, a: 1.000
	case lightest = "colorScaleOrangeLightest"
	/// r: 255, g: 181, b: 153, a: 1.000
	case lighter = "colorScaleOrangeLighter"
	/// r: 255, g: 143, b: 102, a: 1.000
	case light = "colorScaleOrangeLight"
	/// r: 255, g: 106, b: 51, a: 1.000
	case mediumLight = "colorScaleOrangeMediumLight"
	/// r: 255, g: 69, b: 0, a: 1.000
	case medium = "colorScaleOrangeMedium"
	/// r: 213, g: 50, b: 9, a: 1.000
	case mediumDark = "colorScaleOrangeMediumDark"
	/// r: 153, g: 41, b: 0, a: 1.000
	case dark = "colorScaleOrangeDark"
	/// r: 102, g: 28, b: 0, a: 1.000
	case darker = "colorScaleOrangeDarker"
	/// r: 51, g: 14, b: 0, a: 1.000
	case darkest = "colorScaleOrangeDarkest"

}

public enum CFUtilsOverlay: String {
	/// r: 0, g: 0, b: 0, a: 0.020
	case lighter = "utilsOverlayLighter"
	/// r: 0, g: 0, b: 0, a: 0.040
	case light = "utilsOverlayLight"
	/// r: 0, g: 0, b: 0, a: 0.080
	case base = "utilsOverlayBase"

}

public enum CFUtils: String {
	/// r: 255, g: 255, b: 255, a: 0.000
	case clear = "utilsClear"
	/// r: 255, g: 255, b: 255, a: 1.000
	case AlwaysWhite = "utilsAlwaysWhite"
	/// r: 43, g: 43, b: 43, a: 1.000
	case alwaysBlack = "utilsAlwaysBlack"

}

public enum CFPrimaryScalePrimary: String {
	/// r: 175, g: 112, b: 80, a: 1.000
	case brightest = "primaryScalePrimaryBrightest"
	/// r: 158, g: 101, b: 72, a: 1.000
	case lightest = "primaryScalePrimaryLightest"
	/// r: 139, g: 89, b: 63, a: 1.000
	case lighter = "primaryScalePrimaryLighter"
	/// r: 121, g: 77, b: 55, a: 1.000
	case light = "primaryScalePrimaryLight"
	/// r: 104, g: 66, b: 47, a: 1.000
	case mediumLight = "primaryScalePrimaryMediumLight"
	/// r: 86, g: 55, b: 39, a: 1.000
	case medium = "primaryScalePrimaryMedium"
	/// r: 68, g: 44, b: 31, a: 1.000
	case mediumDark = "primaryScalePrimaryMediumDark"
	/// r: 51, g: 33, b: 23, a: 1.000
	case dark = "primaryScalePrimaryDark"
	/// r: 33, g: 21, b: 15, a: 1.000
	case darker = "primaryScalePrimaryDarker"
	/// r: 14, g: 9, b: 6, a: 1.000
	case darkest = "primaryScalePrimaryDarkest"

}

public enum CFColorScaleTeal: String {
	/// r: 237, g: 248, b: 248, a: 1.000
	case brightest = "colorScaleTealBrightest"
	/// r: 206, g: 235, b: 235, a: 1.000
	case lightest = "colorScaleTealLightest"
	/// r: 157, g: 215, b: 215, a: 1.000
	case lighter = "colorScaleTealLighter"
	/// r: 109, g: 195, b: 195, a: 1.000
	case light = "colorScaleTealLight"
	/// r: 60, g: 175, b: 175, a: 1.000
	case mediumLight = "colorScaleTealMediumLight"
	/// r: 11, g: 155, b: 155, a: 1.000
	case medium = "colorScaleTealMedium"
	/// r: 9, g: 124, b: 124, a: 1.000
	case mediumDark = "colorScaleTealMediumDark"
	/// r: 7, g: 93, b: 93, a: 1.000
	case dark = "colorScaleTealDark"
	/// r: 4, g: 62, b: 62, a: 1.000
	case darker = "colorScaleTealDarker"
	/// r: 2, g: 31, b: 31, a: 1.000
	case darkest = "colorScaleTealDarkest"

}

public enum CFColorScalePink: String {
	/// r: 255, g: 240, b: 248, a: 1.000
	case brightest = "colorScalePinkBrightest"
	/// r: 255, g: 208, b: 233, a: 1.000
	case lightest = "colorScalePinkLightest"
	/// r: 255, g: 161, b: 212, a: 1.000
	case lighter = "colorScalePinkLighter"
	/// r: 255, g: 114, b: 190, a: 1.000
	case light = "colorScalePinkLight"
	/// r: 253, g: 81, b: 173, a: 1.000
	case mediumLight = "colorScalePinkMediumLight"
	/// r: 255, g: 20, b: 147, a: 1.000
	case medium = "colorScalePinkMedium"
	/// r: 204, g: 16, b: 118, a: 1.000
	case mediumDark = "colorScalePinkMediumDark"
	/// r: 153, g: 12, b: 88, a: 1.000
	case dark = "colorScalePinkDark"
	/// r: 102, g: 8, b: 59, a: 1.000
	case darker = "colorScalePinkDarker"
	/// r: 51, g: 4, b: 29, a: 1.000
	case darkest = "colorScalePinkDarkest"

}

public enum CFColorScaleBlueViolet: String {
	/// r: 244, g: 239, b: 250, a: 1.000
	case brightest = "colorScaleBlueVioletBrightest"
	/// r: 222, g: 209, b: 241, a: 1.000
	case lightest = "colorScaleBlueVioletLightest"
	/// r: 189, g: 162, b: 227, a: 1.000
	case lighter = "colorScaleBlueVioletLighter"
	/// r: 155, g: 116, b: 212, a: 1.000
	case light = "colorScaleBlueVioletLight"
	/// r: 122, g: 69, b: 198, a: 1.000
	case mediumLight = "colorScaleBlueVioletMediumLight"
	/// r: 89, g: 23, b: 184, a: 1.000
	case medium = "colorScaleBlueVioletMedium"
	/// r: 71, g: 18, b: 147, a: 1.000
	case mediumDark = "colorScaleBlueVioletMediumDark"
	/// r: 53, g: 14, b: 110, a: 1.000
	case dark = "colorScaleBlueVioletDark"
	/// r: 36, g: 9, b: 74, a: 1.000
	case darker = "colorScaleBlueVioletDarker"
	/// r: 18, g: 5, b: 37, a: 1.000
	case darkest = "colorScaleBlueVioletDarkest"

}

public enum CFColorScaleDarkRed: String {
	/// r: 250, g: 239, b: 240, a: 1.000
	case brightest = "colorScaleDarkRedBrightest"
	/// r: 241, g: 206, b: 207, a: 1.000
	case lightest = "colorScaleDarkRedLightest"
	/// r: 227, g: 157, b: 159, a: 1.000
	case lighter = "colorScaleDarkRedLighter"
	/// r: 213, g: 107, b: 112, a: 1.000
	case light = "colorScaleDarkRedLight"
	/// r: 199, g: 58, b: 64, a: 1.000
	case mediumLight = "colorScaleDarkRedMediumLight"
	/// r: 185, g: 9, b: 16, a: 1.000
	case medium = "colorScaleDarkRedMedium"
	/// r: 148, g: 7, b: 13, a: 1.000
	case mediumDark = "colorScaleDarkRedMediumDark"
	/// r: 111, g: 5, b: 10, a: 1.000
	case dark = "colorScaleDarkRedDark"
	/// r: 74, g: 4, b: 6, a: 1.000
	case darker = "colorScaleDarkRedDarker"
	/// r: 37, g: 2, b: 3, a: 1.000
	case darkest = "colorScaleDarkRedDarkest"

}


public extension ShapeStyle where Self == Color {
    static func cf(_ name: CFColor) -> Color {
        name.color
    }
}
